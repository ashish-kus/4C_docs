---
title: "4C External Database Change Log"
weight: 1
draft: false
---

## 15 November 2016

Version 5.8 and higher

- There are 2 flags that can be specified in the external types configuration that help control how long a database connection is kept. The flags are FreeOnCommit - If set to 'y', then after every commit the connection is freed and can be used by other 4C or non 4C database users. It makes sense to use this if your system limits the # allowed connections and you are using connectin pooling software. Setting this is better than using the FC_PSQLFREEONCOMMIT env variable to control PostgreSQL connection life. FreeOnIdle - If set to 'y', then anytime 4C is waiting for user input and the connection is not in the middle of a transaction, the connection will be freed for other uses. This option currently only works with MySQL/MariaDB/ODBC

## 10 September 2012

Version 5.0.9-03 and higher

- The following env variables are available to help PostgreSQL use connection pooling software such as PGbouncer. If the environment variable FC_PSQLFREEONCOMMIT is set to "True", then the 4cpsql8.so library will free the PostgreSQL connection after every commit and reconnect as needed. This makes it possible to use PostgreSQL connection pooling software such as PGbouncer. It will work whether connection pooling software is used or not, but without connection pooling software, will likely slow down the application drastically. The best place to set the FC_PSQLFREEONCOMMIT env var is in the 4CConfig file. Later this option will be added to the External File Types Configuration screen. If the environment variable FC_PSQLMODIFYFIRST is set to "True", then sys.read_file() calls that specify F_ADD|F_MODIFY will try to access the row for update before trying to insert a new row. This should result in no real difference in the functioning of the application. In the future, this will probably become the default. If the database engine is version 8 or higher (as specified in sys.ext_type), 4C will use the "WITH HOLD" option with cursors. This allows 4C transactions to commit with cursors open and generally shortens some transactions. "WITH HOLD" will not be used when FC_PSQLFREEONCOMMIT is "True".

## 06 August 2012

Version 5.2.3-03 and higher

- There are more options that you can specify in defining 4C files and fields when using external database files. They are: For each file, you can specify "Ignore Non 4C Cols". This means that 4C will never look at or update a column in the database unless the 4C file definition includes that column. Thus it is safe to add columns to a database without affecting 4C programs that access that table. It also means you can have columns in a database such as blobs and images that 4C doesn't know what to do with anyway. However, if you use 4C to create the table, it always uses only the 4C fields for defining columns. For each 4C field, you can specify that 4C should use the DB definition of precision if it is different than the 4C one. For each 4C field, you can specify that 4C should use the DB definition of scale if it is different than the 4C one.

## 16 September 2010

Version 4.8.0 and higher

- Better support for mysql text types
- 4c precision can be less than sql precision on varchar and long varchar cols
- Any of server/dbname/username/usedbname/owner/password can be specified in an env var by using the ${ENVVAR} notation
- The password can be cleartext or encrypted
- External databases that need an extra system connection allow for the system connection to be closed after each use. This frees up resources for databases with limited number of available connections. The databases affected by this are MySQL5, PostgreSQL8, and Sybase. Use sys.et.fm and the detail program associated with the database to configure closing of the system connection.

## 02 January 2009

- Handling of lost connections is better in 4csrvr/4cextdb versions 4.4.6 and higher. If a connection is lost due to a network failure or a firewall dropping the connection, any current transaction will be aborted and the connection will be closed. The user may see error messages, but the next time they try access the database a new connection will be started again.
- Version 4.6.2 and higher give the application more control over the persistence of database connections. There are 3 ways the application can close database connections: specify AUTOCLOSE in the external type definition (bootstrap prog sys.et.fm) call [sys.close_file()]({{< ref "../../SysPCLs/closefile.md" >}}) specifying F_CLOSECONN on an open file that is using the connection. Call [sys.conn_close()]({{< ref "../../SysPCLs/connclose.md" >}})

## 16 August 2008

- There is a 4C external db library for MySQL. You may need to update your 4C bootstrap files so that MySQL5 is defined in sys.ft.fm and so that the program sys.et.mysql.fm is available. Initially, the 4c mysql library is available for the linux-centos4.4 distributions with 4c server version 4.4. If you need it for a different platform, please let me know. There is some MySQL info in: [4C External Database Files]({{< ref "dbfiles.md" >}})

## 13 July 2004

- The lib4cpsql library is now available for version 8 of PostgreSQL. The only functional change is that savepoints are used to prevent the current transaction from being aborted when an insert fails. The previous version of PostgreSQL did not support savepoints and there was a very small chance that if two users were trying to insert the same rcd at the same time one of their transactions would be rolled back.
