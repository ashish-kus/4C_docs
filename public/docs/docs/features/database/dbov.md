# Overview of 4C External Database Files

There were two main design issues involved in
allowing 4C to use external database
files, whether Sybase, Oracle, Postgres or
some other database.

- Ensure that the application runs without change. This criteria seems to have been met fairly well.
- Give the application programmer the power to take advantage of some of the features of the DBMS that aren't available using 4C with either JISAM or CISAM. With regards to transaction management, the programmer has a lot of control here. Better access to stored procedures and submitting sql requests from within 4C is still needed. As more 4C applications start using external databases, it is expected that more DBMS features will need to be accessed from within 4C programs.
- Efficiency The best 4C has accomplished so far in this area is in the management of prepared statements. The main problem with efficiency is that 4C applications have been writted to process single rcds at a time. This means that many calls will be made to the DBMS. Applications that update many rcds in the database without any user interaction will probably benefit from rewriting parts of the application to use stored procedures.

---

## Mapping 4C File Definitions

- 4C maps a single 4C file definition to a single table in the database.
- 4C creates a unique index on the key specified as the 4C primary key.
- 4C creates secondary indexes on all 4C secondary keys.
- 4C maps 4C datatypes to appropriate database datatypes.

---

## Transactions

4C has two different ways of handling transactions.
The first is when the application has not specifically
called sys.begin().
In this case 4C commits the transaction every time the
number of rcds locked goes to zero.
The number of rcd locks is a 4C notion completely
separate from the DBMS idea of rcd locks.
In this context, it is simply a count of the number
of file accesses that specify F_ACC,F_MODIFY,or
F_DELETE.
4C begins a transaction after every commit.
The isolation level of transactions started this way
will be the same as the default isolation level specified
in the external type definition.

You are free to change this default way of handling
transactions by modifying the application and
explicitly calling sys.begin(), sys.commit(), and
sys.rollback().
When running transactions this way you can specify the
isolation level of individual transactions or use the default
specified in the external type definition.

---

## Database Connections

- 4C will use at least one connection for each 4C user accessing the external database.
- In the cases where one user has multiple transactions running at the same time, then 4C will use multiple connections for that user, one for each active transaction.

---

## Transparent SQL

The main interaction of 4C with the external database
is in the mapping of the sys.read_file(), sys.upd_file(0,
and sys.run_driver() statements.
4C maps all file accesses to SQL requests without
the application needing any changes.

- Each 4C sys.read_file() statement gets mapped into a single sql select stmt using a single table.
- Each 4C sys.upd_file() statement gets mapped into a single update/delete sql stmt.
- Each 4C sys.run_driver() opens a cursor on a single table.

When the external database allows it, 4C prepares the sql statements
and submits them to the DBMS in prepared form.
4C keeps the prepared statements as long as possible.
Different 4C programs using the same database connection
will use the same prepared statements.
Different users will not share the same prepared statements.

