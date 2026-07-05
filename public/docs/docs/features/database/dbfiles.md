# 4C External Database Files

4C Server version 3.0.4 and higher supports better
access to external databases.
The current list of supported platforms is:

- ODBC on WindowsNT and Windows2000
- Oracle8 on Linux
- PostgreSQL Version 7/8 on Linux
- Sybase 11.9.2 on Linux
- Sybase 12 on HP
- MySQL version 5 and higher. 4CSoftware recommends MySQL Enterprise Edition.

Other platforms will be supported for Oracle,
PostgreSQL, and Sybase as long as access is provided to a system with
the correct C compiler and Database libraries.
I will try to stay current with the latest releases of
Sybase, Oracle, and PostgreSQL.

For the most part, earlier versions of the 4C shared
libraries should work with later versions of the same database.
However, you must make sure that the versions of the 4c shared libraries
are compatible with the 4c server version.
This means that both Version and Release numbers must be the same.
You will get an error when you try to connect to the database if 4C
detects an incompatibility in the versions.
Other Databases may be supported in the future.

With the exception of the 4codbc libraries which are included
on the NT 4csrvr install, the 4C database libraries are available
as separate installs.
The installs are available under the 4C ExtDB Libs link
on the 4C Software Downloads page.
They are all tarfiles with a README file describing the install
procedure.
You should keep the 4CSrvr and 4CExtDB installs in sync.
Only use Release 4CExtLib with Release 4CSrvr.
Only use Beta 4CExtLib with Beta 4CSrvr.

---

## Bootstrap Files

There are two new bootstrap files
that define the external database to 4C.
They are:

- sys.file_type - This file lists the types of databases that 4C knows about and should not be modified by the application.
- sys.ext_type - This file will be treated as a normal data file that can exist anywhere in the XLDATA path. However, you should not use the one in XLSYSTEM for application purposes. It lists the external types that a particular application uses. More than one external type may be used to access the same external database.

---

## Bootstrap Programs

There are 2 new bootstrap programs that let you view and change the
information in sys.file_type and sys.ext_type.
They are:

- sys.ft.fm - View the sys.file_type file.
- sys.et.fm - View/Modify the applications sys.ext_type file. You can also access the detail program for the selected type.

---

## System PCLs

There are three system PCLs used for managing
transactions.
You don't have to use them as 4C will make reasonable
choices for starting, committing, and rolling back transactions.
But, in some situations you may prefer controlling the
transactions yourself.
The three PCLs are:

- [sys.begin()]({{< ref "../../SysPCLs/begin.md" >}})
- [sys.commit()]({{< ref "../../SysPCLs/commit.md" >}})
- [sys.rollback()]({{< ref "../../SysPCLs/rollback.md" >}})

---

## Getting Started

Before you can use 4C to access data in an external database,
you must have the dbms installed correctly and have
at least one database created.
You will need to know the database name and a username and password.
Once you know this,
add a record to the sys.ext_type file using the sys.et.fm program.
Don't forget to specify the details.
At the very least you will need to enter some type of database
identifier, user name, and encoded password.
The encoded password can be obtained using the encode4c program.

To specify that a 4C file is a particular external type set sys.fh_access
to "External" and then set sys.fh_exttype to the correct application defined
external type.
If you change the external type of a file, the file will need to
be recompiled.
If you change the file type of an external type
you do not need to recompile the affected files but you may
need to exit and reconnect to a 4csrvr.

Object names known to the database may be different than the names
known to 4C.
For both file names and field names, 4C changes all '.' characters
to '_'.
Thus a file named resp.party will be named resp_party and a field
named rp.code would be named rp_code.

4C also maps dimensioned fields to multiple single dimensioned fields.
So a field defined as rp.date[4] would be defined as 4 separate
fields in the database.
The fields would be named rp_date_0, rp_date_1, rp_date_2, and rp_date_3.

4C fields that are shared are only defined once in the database.

Note: The changes noted above only affect programs outside of 4C.
You still need to refer to fields and files by the names known
by 4C, but when you access the database from a different program,
you need to be aware of these changes.

---

## Converting Files

Before converting files you will need to verify that the
data in the file is usable by the database.
The program xlvflds will help you do this.
Before you run this program you need to understand how 4C
will create the file definition to the database.

- 4C Alpha and 4C Choice fields that are key fields, either primary or secondary, will be defined as CHAR fields with a precision equal to the max len of the field. 4C will use the display format of the field to determine its max length. You can override this by specifying an SQL Type of either CHAR or VARCHAR and the appropriate precision in the 4C data dictionary.
- 4C Alpha and 4C Choice fields that are not key fields will be defined as VARCHAR fields with a precision equal to the max len of the field. 4C will use the display format of the field to determine its max length. You can override this by specifying an SQL Type of either CHAR or VARCHAR and the appropriate precision in the 4C data dictionary.
- 4C Integer fields will be defined as 4byte integer fields in the database.
- 4C Float fields will be defined as DECIMAL fields in the database with a precision and scale derived from the display format of the field. You can override this in the 4C data dictionary by specifying SQL type of DECIMAL and appropriate values for precision and scale. Remember that the precision is the total number of digits allowed in the DECIMAL field and the scale is the number of digits to the right of the decimal pt.
- 4C Date fields will be defined as DATE if the database supports that type and as TIMESTAMP if DATE is not supported and TIMESTAMP is. If you specify DateAsInt in the external type definition, then 4C will define the 4C Date field as an integer to the database.
- 4C Time fields will be defined as TIME if the database supports that type and as TIMESTAMP if TIME is not supported and TIMESTAMP is. If you specify TimeAsInt in the external type definition, then 4C will define the 4C Date field as an integer to the database.

Please note that this is the way 4C will create the database table definition
if 4C creates it.
If you create the database definition in another way you will still
need to have a 4C file definition.
4C will be able to map field types in the database
to and from a 4C datatype.
Some of the allowable mappings are:

- 4C Alpha and 4C Choice fields can be mapped to CHAR or VARCHAR. The precision of the fields needs to compatible.
- 4C Integer fields can be mapped to any size INTEGER, FLOAT, REAL, or DECIMAL fields in the database.
- 4C Float fields can be mapped to DECIMAL, FLOAT, or REAL fields int the database. Precision and scale need to be compatible.
- 4C Date fields can be mapped to TIMESTAMP, DATE, or INTEGER fields in the database.
- 4C Time fields can be mapped to TIMESTAMP, TIME, or INTEGER fields in the database.

When you run xlvflds you may see some of the following errors or
warnings.

1. The precision of a 4C Alpha field is too small for some of the data in the file. You can fix this by doing one of the following. Truncate the field in question Set appropriate values for SQLtype and Precision in the data dictionary. Modify the display format of the field.
2. A 4C Date field is too small. Change the date to a valid date.
3. A 4C Date field is too big based on the '-D' option of xlvflds. Change the date to a valid date.
4. A 4C Time field is too small. Change the time to a valid time.
5. A 4C Time field is too big. Change the time to a valid time.
6. A 4C Float field is too big for its precision and scale. You can fix this by doing one of the following. Change the data in the field in question. Set appropriate values for SQLtype, Precision, and Scale in the data dictionary. Change the display format of the field so that the precision and scale 4C calculates will be sufficient for the data.
7. A 4C Float will be rounded when converted. This is a warning only and the rounding that will occur may be acceptable. You can fix this by doing one of the following. Ignore it. Change the data in the field in question. Set appropriate values for SQLtype, Precision, and Scale in the data dictionary. Change the display format of the field so that the precision and scale 4C calculates will be sufficient for the data.
8. Possible garbage in an alpha field. This is a warning only and the data in question may be acceptable. Determine if the data is valid for the field. If it isn't, change it.

It is usually preferable to change the SQLType, Precision,
and Scale of a field than the display format because
changing the default display format will affect all 4C programs
that use the default display format.

Once you are sure the data in the 4c file is acceptable,
then you can go about converting it to a database file.

There are several methods you can use to convert files
and the one you use will depend on your own personal
preferences as well as the quantity of the data you need
to convert and how often you need to do the conversion.
Some possible conversion methods are outlined here.

- xlconv -f `<fname>` -e `<exttype>` ... This can create the table definition as well as copy the data.
- If you have large amounts of data to convert, it may be faster to use the xloraseq program to generate a text file that can be bulk copied into the database. You will need to know the database command to load this type of file and the format that it expects to see the data in. If you use this method you will need to create the table definition using either xlcr or sys.open_file().
- Use a 4C program to read the original file and write to the database. If you use this method you will need to create the table definition with sys.open_file().

Once converted, you will need to change the file definition to
specify External access and the correct external type.
Recompile the file definition and any programs that use that file.

---

## Transactions and Record Locking

Another important thing to understand is how 4C will deal with
transactions and record locking.
All 4C accesses of a database are part of a transaction.
These transactions are started either implicitly by 4C
or explicitly by the application calling
[sys.begin().]({{< ref "../../SysPCLs/begin.md" >}})
Implicit transactions are used whenever no application started
transactions are in effect.
The boundaries of an implicit transaction depend on the setting
of CommitType in the external type detail.

- If this is set to AUTO, then every single SQL statement is it's own transaction. No record locking is possible using AUTO commit.
- If this is set to 4C then 4C commits the current transaction and starts a new one whenever there are 0 records locked on that particular connection.
- If this is set to APP then the application is in charge of beginning and ending all transactions.
- Each 4C group will have its own database connection. So, there may be multiple implicit transactions running at a time depending on how many different 4C groups are running and accesing the database.

Explicit transactions are those started by a call to sys.begin().
Each explicit transaction must have it's own database connection,
so if you nest transactions you will have multiple database connections
active.
You should try to call sys.commit() or sys.rollback() for each
call to sys.begin().
However, if you don't 4C will try to do the right thing.
If you neglect to commit a transaction that you started with
sys.begin(), 4C will eventually commit the transaction if the
program exits with a 0 exitcode, or 4c will rollback the transaction
if the program exits with a negative exitcode.
The transaction will also be rolled back if 4C reaches a state earlier
in the program than when the transaction was started.
This is possible if the EFldPCL of an input field starts a transaction
and the user cancels before the application calls sys.commit().

Even when T_AUTOCOMMIT is specified with sys.begin(), you still need a matching
sys.commit().
In this case, even though each sql statement has already been commited,
the sys.commit() serves to mark the end of a set of statements that are each
auto commited.
Without the sys.commit(), you would probably leak database connections and this
is very expensive.

A 4C transaction may involve multiple files spanning multiple
databases.
By allowing multiple connections to the database 4C allows
you to have multiple concurrent transactions.
The transactions can be parallel or nested.
A nested transaction is a transaction started by a program that
already has running transaction or by a program that has an ancestor
with a running transaction.
Parallel transactions are transactions in separate 4C groups
or in linked 4C programs.

A 4C transaction may involve more than 1 database connection.
Calling sys.commit() will commit the transaction on each connection,
but it is possible that one connection could die and not commit
the transaction while the other connections commit it.
If you need to depend on a transaction that spans multiple
databases to either fully commit or fully rollback then you need
to use the database management facilities for this and
not the 4C transaction management.

4C transactions have no effect on non database files such as JISAM
or CISAM.

The underlying database system may choose to rollback a transaction
due to deadlock conditions or some other database specific issue.
If a transaction is rolled back any call to access or update
data in a file involved in that transaction will fail and
sys.errno will be set to ABORT_ERR.
If sys.commit() is called, it will also fail and sys.errno will
be set to ABORT_ERR.
sys.rollback() will succeed on an aborted transaction.
Once sys.commit() or sys.rollback() has been called, the application
will be able to run another transaction.

If an explicit transaction is aborted, then all pushed programs
since the start of the transaction will be killed and will exit
with a -3 exitcode.
The program that started the transaction will continue from where
it left off.

If an implicit transaction is aborted 4C does not even know
which program started it, so it cannot exit pushed programs.
In this case the current program continues running.

4C as a default will try to lock records so that 2 users trying
to modify the same record at the same time will be prevented from
doing so.
It does this by aquiring update locks from the database when
it first accesses the rcd in modify mode.
You can tell 4C to not try to aquire locks in this manner and
just let the database grant the locks as it sees fit by specifying
no for UseRcdLocks in the external type detail definition.
You should be careful about using this though since
it will be more likely that a sys.upd_file() will fail rather
than the sys.read_file(...,F_LOCK)

This may be acceptable if you are doing all of your own transaction
management, but if you are letting 4C do it, it will probably
not be acceptable.

Another issue that will affect concurrency is the isolation
level of your transactions.
You should use the lowest isolation level that is acceptable
to your application, especially if you are using 4C transactions
and 4C rcd locking.
The sys.et.fm program allows you to specify a default isolation
level for transactions.
Use the IsolationLevel field for setting the default isolation
level rather than one of the InitStrings.
If you don't specifically set an isolation level,
then the DBMSs default isolation level will be used.
You can overide the default isolation level for individual trannsactions
with one of the flags in sys.begin();

See your DBMSs documentation for more info on isolation levels.

```text
<!--
sql direct

possible problems
drop table outside of current process when it has it open
updating the current rcd in DRSel

F_NODROP

stored procedure syntax

sys.sql_execute

-->
```

---

## OS Specific Issues

- HP On HP Systems the shared libraries have the extension ".sl" instead of ".so" and they need to have read and execute permissions. SHLIB_PATH is used instead of LD_LIBRARY_PATH for searching for non 4C shared libraries.

---

## Database Specific Issues

- Sybase The same environment variables set by the sybase user need to be set by 4c users including the user that starts the 4csrvrd daemon. These may vary between versions and os's but at a minimum include SYBASE and either LD_LIBRARY_PATH or SHLIB_PATH. The easiest way to set these is to source the SYBASE.sh file located in the sybase users home directory. Sybase will always wait for rcd locks. There is currently no way to tell ahead of time if a record is locked without waiting for the lock. 4C will display waiting for lock if it detects it has been waiting 10 seconds or so. One of the following statements can be used as an InitString to set the transaction isolation level for the current connection in Sybase. However, it is better to use the IsolationLevel field in the sys.et.fm program rather than one of the InitStrings. set transaction isolation level read uncommitted set transaction isolation level read committed set transaction isolation level repeatable reads set transaction isolation level serializable reads
- Oracle The following env vars are needed for all 4c oracle users. ORACLE_SID ORACLE_BASE ORACLE_HOME The above is not necessarily true anymore as long as the service name is set correctly to 4C. However, LD_LIBRARY_PATH will need to be set to $ORACLE_HOME/lib The Oracle service name can be left blank to connect to the default database on the localhost. In order to connect to a different database than the default on localhost a connection string of the form: [[//]host[:port]/][servicename] should be used. The following are all valid oracle connection strings that can be specified in the service name entry of the sys.et.orcl.fm program `<empty>` - Connects to default database on localhost xe - Connects to the xe database on localhost //10.0.0.16 - Connects to the default database on 10.0.0.16 using the oracle default port number of 1521 //10.0.0.16:1521/xe - Connects to the xe database on 10.0.0.16 using port 1521 The Oracle default for open cursors is usually too small. This can be changed by setting the open_cursors var in the correct init.ora file to some high number. Setting it to several thousand should not cause any problems. Oracle seems to be able to avoid deadlock situations better than some databases so the likelihood of a transaction being aborted is low. One of the following statements can be used as an InitString to set the transaction isolation level for the current connection in Oracle. However, it is better to use the IsolationLevel field in the sys.et.fm program rather than one of the InitStrings. alter session set isolation_level = read committed alter session set isolation_level = serializable
- PostgreSQL If you are connecting to a PostgreSQL database that is on a different machine than the 4c server you will need to specify the host and possibly the portnumber as part of the database name. Use one of the following formats: DatabaseName: `<dbname>` host=`<hostname>` [ port=`<portno>` ] DatabaseName: `<dbname>` hostaddr=`<numericipaddr>` [ port=`<portno>` ] `<dbname>` must be specified first. The order of the other attr=val pairs is not important. `<dbname>` and and all attr=val pairs must be separated by spaces. Specifying port is optional if you are using the default PostgreSQL port. Be very careful using any of the sys.read_file() read relative flags such as F_KEYLT, F_KEYLEQ, F_KEYGT, and F_KEYGEQ with any large file on any key with multiple parts. Any of these may trigger a full table scan with enormous performance degradation. Reading by a key that has only a single part does not have this problem. This is true with primary and secondary keys. This is true at least with PostgreSQL versions up through 8.1.3. Do not use autocommit with PostgreSQL because cursors are not allowed with autocommit and 4C depends on them. PostgreSQL will always wait for rcd locks. There is currently no way to tell ahead of time if a record is locked without waiting for the lock. 4C will display waiting for lock if it detects it has been waiting 10 seconds or so. There is a chance that a transaction will be rolled back when 4c tries to insert a rcd. This is only an issue when using PostgreSQL Version 7 or Earlier and/or 4clibpsql Version 7 or Earlier To understand how this can happen, consider the way that 4C will lock a rcd in insert mode with Postgres. Select the rcd to see if it exists. If it does not exist, insert it with default values. When sys.upd_file() is called, update the rcd that was inserted. If the same rcd has been inserted but not committed by another process, the select will return no rcds and 4C will try to insert the rcd. The insert will wait until the other process commits the insert and then Postgres will abort the transaction because the rcd already exists. The 4C sys.read_file(...,F_ADD) will fail and set sys.errno to ABORT_ERR. Processing will continue as documented under transactions and record locking. The real problem here is that Postgres will automatically abort the transaction rather than return an error when a process tries to insert a rcd and the rcd alread exists. This behavior is considered "Normal" by the Postgres people and a "Bug" by most application developers. Currently there is no 4C work around, so be prepared to deal with aborted transactions. I hope in the future that Postgres will just return an error rather than aborting the transaction. If this issue is important to you, you may consider lobbying the Postgres people. Be prepared for the following canned responses. Lock the table before insert. Only for very short duration transactions should this be used. Use a serial type for the primary key. This is no longer an issue when using Postgres 8.0 or higher along with the correct lib4cpsql (8 or higher). When using serial data type, make sure that that you use the Postgres function nextval to set the value before attempting an insert. Never let 4C modify the serial field. Currently a Postgres serial data type is a 4 byte integer that maps cleanly to a 4c integer. On some systems it may be necessary to set the LD_LIBRARY_PATH environment vartiable. One of the following statements can be used as an InitString to set the transaction isolation level for the current connection in PostgreSQL. However, it is better to use the IsolationLevel field in the sys.et.fm program rather than one of the InitStrings. set session characteristics as transaction isolation level read committed set session characteristics as transaction isolation level serializable The PostgreSQL 4c extdb library uses the PostgreSQL C API library, libpq. Any version of this library should work with any PostgreSQL server version as long as the PostgreSQL server version is at least as high as the PostgreSQL libpq library used with the 4C ext db library. Please don't ask me if the 4C extdb library compiled with PostgreSQL libpq version X can be used with version Y of PostgreSQL server. This is a PostgreSQL issue, not a 4C issue. If the environment variable FC_PSQLFREEONCOMMIT is set to "True", then the 4cpsql8.so library will free the PostgreSQL connection after every commit and reconnect as needed. This makes it possible to use PostgreSQL connection pooling software such as PGbouncer. It will work whether connection pooling software is used or not, but without connection pooling software, will likely slow down the application drastically. The best place to set the FC_PSQLFREEONCOMMIT env var is in the 4CConfig file. Later this option will be added to the External File Types Configuration screen. If the environment variable FC_PSQLMODIFYFIRST is set to "True", then sys.read_file() calls that specify F_ADD|F_MODIFY will try to access the row for update before trying to insert a new row. This should result in no real difference in the functioning of the application. In the future, this will probably become the default. If the database engine is version 8 or higher (as specified in sys.ext_type), 4C will use the "WITH HOLD" option with cursors. This allows 4C transactions to commit with cursors open and generally shortens some transactions. "WITH HOLD" will not be used when FC_PSQLFREEONCOMMIT is "True".
- MySQL The connection string used to define your MySQL connection to 4C looks something like: `DBName=`<dbname>`,Host=`<hostname>`[,Port=`<portno>`][,Socket=`<socketname>`]` Normally you won't need to specify `<socketname>` or `<portno>`. If the server you are connecting to runs on the same machine as the the 4csrvr, use localhost for `<hostname>`. MySQL allows different storage engines and not all of them support transactions. If you expect sys.rollback() to work on your MySQL files they must use a storage engine that supports transactions. The default storage engine for all "create table" statements can be specified in the my.cnf config file using something like: default-storage-engine=InnoDB As an alternative, each individual create table stmt can specify the storage engine. If 4C creates a table, it uses the default-storage-engine. show create table `<tablename>` will show the storage engine used by `<tablename>`. On some systems it may be necessary to set the LD_LIBRARY_PATH environment vartiable. For locking timeouts to act reasonably, you should override the default innodb lockwait timeout of 50 seconds by setting it in the MySQL Config file. i.e. `innodb_lock_wait_timeout=`<n>`` Where `<n>` is the number of seconds to wait for a lock before the stmt fails. The MySQL 4c extdb library uses the MySQL C API library. Any version of this library should work with any MySQL server version. Please don't ask me if extdb library compiled with MySQL C API version X can be used with version Y of MySQL server. This is a MySQL issue, not a 4C issue.
- MSSQLServer using NT and ODBC When MSSQLServer is installed, you must specify that the databases created will be case sensitive. One of the following statements can be used as an InitString to set the transaction isolation level for the current connection in MSSQLServer. However, it is better to use the IsolationLevel field in the sys.et.fm program rather than one of the InitStrings. SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED SET TRANSACTION ISOLATION LEVEL READ COMMITTED SET TRANSACTION ISOLATION LEVEL REPEATABLE READ SET TRANSACTION ISOLATION LEVEL SERIALIZABLE If you want MSSQLServer to be able to wait for rcd locks and set the SetWait string to SET LOCK_TIMEOUT -1 and the SetNoWait string to SET_LOCK_TIMEOUT 0 Unfortunately, MS still didn't do it right, so don't use these. MS will rollback a transaction when the timeout fails even though the documentation says it only cancels the single stmt that failed. Not only do they roll the transaction back, but they do not give any error code indicating that they did this. You are better off always waiting for a lock. At least this way the rollback can be detected.
- ODBC The following are allowable Database types: IFX-SE - Informix Standard Engine IFX-OL - Informix Online SQLAnywhere Oracle MSSQLServer Postgres PostgreSQL Sybase MySQL

---

## Miscellaneous

- You can specify owner.table either with sys.set_extfname() or in the external file name of the file definition. However, since 4C maps all periods in file names and field names to underscores you need to use an asterisk. So instead of owner.table you need to use owner*table. On systems that allow db.owner.table you would use db*owner*table.
- 4C acts as a client accessing an external database. So, many 4csrvrs could be updating the same database. Applications will not be able to assume all users are on the same machine. Applications that make this assumption will not work correctly.

---

## Miscellaneous

- Don't use external database files as as 4c temp files. Instead, define a file that uses the same file detail and use that.

---

## Troubleshooting

On some systems it may be necessary to set the LD_LIBRARY_PATH or
SHLIB_PATH to include the directories where the database stores
it's run time libraries.
It is not necessary to include the HOME_4C/lib directory in this
path since 4C knows where to look for it's own runtime libraries.

You can save the SQL statements that 4C sends to the DBMS
by specifying an SQLFileName and SQLDebugLevel in the external
type detail definition.
Use 1 for the SQLDebugLevel.
Be careful though, this file will not usually
be removed or truncated and will eventually get quite large
and slow down your system.
Make sure SQLDebugLevel is set to 0 for normal use.

If you need very verbose debugging info you can set the SQLDebugLevel
to 9 and use the dbg library instead of the rel lib.
Any time you are using the dbg library, lots of stuff will be written
to the file specified by DbgFileName.
This file also will get large and not be removed or truncated.
Make sure you always use the rel lib during normal use.
You can switch between the rel and dbg libraries by
setting the correct symbolic link.

