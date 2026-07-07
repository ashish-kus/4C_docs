---
title: "4C SQL"
weight: 4
draft: false
---

You can now embed SQL statements in regular 4C programs.
The statements allowed are:

- select
- update
- insert
- delete
- call
- SQL

In order for 4C to know what connection you want to use,
it checks the value of the XLEXTTYPE env var.
The XLEXTTYPE env var must be set to a valid external type which corresponds
to a record in the sys.ext_type file.

4C parses all SQL statements at compile time and saves them in a way
that they can be passed to any of the supported databases at run time.
The database will parse the statement at run time also.
4C does not keep the sql statements in a prepared state after
they have been processed.
It may do so in the future if it seems necessary.
If you find, that you are running the same sql statement, possibly
with different input parameters, thousands of times, then you
might benefit from this functionality.

4C SQL statements are always executed as part of the current
transaction.

4C SQL Statements can be intermixed with other PCL
statements and system PCL calls including sys.read_file() and
sys.upd_file() calls.

SQL keywords can be written in either upper or lowercase letters
but not mixed case.
Either select or SELECT is recognized, but Select is not.
All sql statements in 4C must end with a semicolon.

There are several new fields in the local system file that
allow you to check sql returns and messages.
They are:

- sql_ret - After any sql statement, this will always be set to one of SQL_SUCCESS, SQL_ERROR, or SQL_NODATA. Of the three possibilities, only SQL_ERROR is less than 0.
- sql_errno - If sql_ret is SQL_ERROR, then sql_errno will be set to one of the following: SQL_ERRCONN - could not connect to the database SQL_ERRDUP - tried to insert duplicate row SQL_ERRTABLE - table not found or accessible SQL_ERRCOLUMN - column does not exist in table SQL_ERRTIMEOUT - query timed out SQL_ERRUNSUPPORTED - unsupported statement SQL_ERRINUSE - the stmt is already in use. This is only possible if you recursively call the same pcl from within a FOREACH loop. SQL_ERRUNKNOWN - error unknown SQL_ERRDEADLOCK - transaction deadlocked SQL_ERRABORT - transaction aborted
- sql_nrows - After an update, delete, or insert statement, this is always set to the number of rows affected. After a call statement, even if rows are updated, it is undefined, and should not be used. During the processing of a FOREACH loop, it will be set to the current row number and at the end of the FOREACH loop, it will be set to the total number of rows processed.
- sql_dberrno - If sql_ret indicates an error, then this is set to the underlying dbms's native error code.
- sql_dbmsg - The dbms's message associated with the sql_dberrno
- sql_state - Not used yet.

When using 4C transactions any of the sql_ fields in may be reset if 4C does a commit on the
transaction.
The reason is that the last stmt was the commit issued 4C and the sql_ fields will reflect
the result of the commit.
A 4C transaction is only committed when there are no "rcd locks" still active in the transaction.
If you need to be able to check any of the sql_ fields after an sql stmt then you should wrap the
stmt or set of stmts in a T_APPCOMMIT transaction or make sure that the current transaction
will not be committed by 4C after it completes.
Using SQL statements that are autocommitted will also avoid 4c committing the transaction and
the sql_ fields from $syslocalf will have the result from the last SQL stmt run.

A more detailed description of each type of SQL statement follows
along with some examples.
Please note that this is not meant to be a tutorial on sql and
is only meant to point out how to use sql statements in 4C.
If you would like my preference for an SQL book,
it is:

```text
SQL:1999
Understanding Relational Language Components
Jim Melton and Alan R. Simon
Published by Morgan Kaufman
ISBN - 1-55860-456-1
```

---

## select

select - This is the standard SQL select statement.

In order to read all columns from a single table you might use a
statement like:

```text
select * from cust_mstr where cm_code = 'KJE001'
```

The above statement is about the same as if you had done the following:

```text
cm_code = 'KJE001'
sys.read_file(cust_mstr,F_LOOKUP);
```

Assuming that the 4c var cm_code has been set by the application
you could also use:

```text
select * from cust_mstr where cm_code = :cm_code;
```

The above examples fetch all columns from a single tuple.
The columns fetched end up in the 4C vars for the 4C file
cust_mstr.
If you choose, can can fetch only some of the columns
as in the following:

```text
select cm_code, cm_name from cust_mstr where cm_code = :cm_code;
```

In this case only the cm_code and cm_name 4c vars are modified
by the select statement.

You may prefer to have the columns fetched into different 4C vars
than those that correspond to the 4c file.
If so, then you must provide an into clause with the select:

```text
select cm_code, cm_name from cust_mstr into :cmcode1, :cmname1 where
cm_code = :cm_code;
```

or alternately

```text
select cm_code, cm_name from cust_mstr where cm_code = :cm_code
into :cmcode1, :cmname1;
```

After any select statement you can check the value of sql_ret.
It will be one of SQL_SUCCESS, SQL_NODATA, or SQL_ERROR.

So far we have looked at select statements that return a single tuple.
In fact, if you use a select statement like those above that return
more than one tuple, you will only get the first tuple.

The SQL way of processing multiple tuples returned in a select
statement is to use cursors.
Cursors are ugly and awkward to use, so 4C currently deviates
from standard SQL and provides a FOREACH statement.
Assuming you want to use an SQL select to iterate through
all the cust_mstr tuples with the same city, you would do the following:

```text
cmcity = sys.get_answer("Which City?","",30,GA_INPNORMAL);
FOREACH (select * from cust_mstr where cm_city = :cmcity;) {
/*
* Do other 4C processing here
*/
}
```

Withing the FOREACH statement, the system variable sql_nrows
will have the current row number being processed.
Afterward, it will have the total number of rows processed.
Note that the semicolon is still necessary at the end of the sql
statement.

If it is necessary,
I will implement the cursor statements that are standard SQL.

Some other select statements that are possible include:

```text
select count(*) from cust_mstr into :count;
```

Note that the into clause was necessary here since 4C has
no way of knowing where to put the returned column.

The standard ways of joining tables are supported.
You can look this stuff up in your sql reference books.

---

## update

update - This is the standard SQL update statement.

The following would be acceptable update statements

- cm_code = 'KJE001' curpayment = 500; update cust_mstr set cm_amount = cm_amount - :curpayment where cm_code = :cm_code;
- update cust_mstr set cm_amount = 0;

---

## delete

delete - This is the standard SQL delete statement.
The following would be acceptable delete statements

- delete from cust_mstr where cm_code = 'KJE001'

---

## insert

insert - This is the standard SQL insert statement.
The following would be acceptable insert statements

- insert into cust_mstr values (:cm_code,:cm_name,...,:cm_comment[2]);
- insert into cust_mstr select * from ocust_mstr; This would only be valid if cust_mstr and ocust_mstr had the same columns.

---

## call

call - Call a stored procedure or function

Some examples of calling a stored procedure follow:

- call :seq = nextval("serial1_s_serial_seq");
- call cminc();
- :rc = call cminc('1');
- call cmsel(:cmcode1,:cmcode2) into :cm_code, :cm_name; call cmminmax(:rc[0] OUT, :rc[1] OUT); Note that parameters passed to a stored procedure or function default to input parameters. You can explicitly specify a parameter as input, output, or input and output by adding IN, OUT, or INOUT after the parameter.

Currently, stored procedures that return reference cursors
or multiple result sets are not suported.
Stored procedures that return result sets must have an into clause
and can be used as part of a FOREACH loop.

---

## SQL

SQL - Use this for non standard sql statements for your database.

Some pssibilities might be:

- sql "select nextval('serial1_s_serial_seq'::text)" into :textseq; That could be used by a PostgreSQL connection to get the next serial value into an alpha var.

For the most part, if you stick to using standard SQL, you will not
need to use the SQL statement.

Please note that in any sql stmt, there is a very big difference
between a parameter and a column.
The statement,

```text
update cust_mstr set cm_amount = cm_amount;

is very different from

update cust_mstr set cm_amount = :cm_amount;

The first accomplishes nothing, while the second takes the current
value of the 4C file var cm_amount and stores it the cm_amount
column of each tuple in the cust_mstr table.

4C SQL Grammar

Here is the complete grammar that 4C recognizes:

sql_list : sql ''
;
sql : manipulative_statement
;
manipulative_statement
: delete_statement_searched
| insert_statement
| select_statement
| spcall
| native_sql_statement
| update_statement_searched
;
delete_statement_searched
: _DELETE _FROM table opt_where_clause
;
insert_statement: _INSERT _INTO table paren_column_ref_commalist
values_or_query_spec
| _INSERT _INTO table values_or_query_spec
;
native_sql_statement
: _SQL opt_spresulteq _STRING opt_into_clause
| _SQL opt_spresulteq _DQSTRING opt_into_clause
| _SQL opt_spresulteq _NAME opt_into_clause
;
select_statement: query_spec opt_order_by_clause opt_into_clause
;
spcall :
_CALL opt_spresulteq _NAME '(' opt_spparamlist ')' opt_into_clause
;
update_statement_searched
: _UPDATE table _SET assignment_commalist opt_where_clause
;
values_list : '(' insert_atom_commalist ')'
;
values_comma_list
: values_list
| values_comma_list ',' values_list
;
values_or_query_spec
: _VALUES values_comma_list
| query_spec
;
query_spec : _SELECT opt_all_distinct selection opt_into_clause table_exp
| query_spec _UNION opt_all_distinct query_spec
| query_spec _EXCEPT opt_all_distinct query_spec
| query_spec _INTERSECT opt_all_distinct query_spec
| '(' query_spec ')'
;
selection : scalar_exp_commalist
| '*'
;
from_clause : _FROM table_ref_commalist
;
where_clause : _WHERE search_condition
;
subquery : '(' query_spec ')'
;
derived_table : table_subquery
;
table_exp : from_clause opt_where_clause opt_group_by_clause
opt_having_clause
;
table_ref : table
| table opt_as range_variable
| joined_table
;
table_subquery : subquery
;
table_primary : table
;
table : _NAME
| _NAME '.' _NAME
| derived_table opt_as correlation_name opt_derived_column_list
;
tabledotstar : table _DOTSTAR
;
joined_table : cross_join
| qualified_join
| natural_join
| union_join
;
cross_join : table_ref _CROSSJOIN table_primary
;
qualified_join : table_ref opt_join_type _JOIN
table_ref join_specification
;
natural_join : table_ref _NATURAL opt_join_type _JOIN table_primary
;
union_join : table_ref _UNIONJOIN table_primary
;
join_type : _INNER
| outer_join_type opt_outer
;
outer_join_type : _LEFT
| _RIGHT
| _FULL
;
join_specification
: join_condition
| named_columns_join
;
join_condition : _ON search_condition
;
named_columns_join
: _USING '(' join_column_list ')'
;
join_column_list: column_ref_commalist
;
assignment : column_ref '=' scalar_exp
| column_ref '=' _NULLX
;
search_condition: search_condition _OR search_condition
| search_condition _AND search_condition
| _NOT search_condition
| '(' search_condition ')'
| predicate
;
predicate : comparison_predicate
| between_predicate
| like_predicate
| test_for_null
| in_predicate
| all_or_any_predicate
| existence_test
;
comparison_op : '='
| _COMPARISON
;
comparison_predicate
: scalar_exp comparison_op scalar_exp
| scalar_exp comparison_op subquery
;
between_predicate
: scalar_exp _NOT _BETWEEN scalar_exp _AND scalar_exp
| scalar_exp _BETWEEN scalar_exp _AND scalar_exp
;
like_predicate : scalar_exp _NOT _LIKE atom opt_escape
| scalar_exp _LIKE atom opt_escape
;
test_for_null : column_ref _IS _NOT _NULLX
| column_ref _IS _NULLX
;
in_predicate : scalar_exp _NOT _IN subquery
| scalar_exp _IN subquery
| scalar_exp _NOT _IN '(' atom_commalist ')'
| scalar_exp _IN '(' atom_commalist ')'
;
all_or_any_predicate
: scalar_exp comparison_op any_all_some subquery
;
any_all_some : _ANY
| _ALL
| _SOME
;
existence_test : _EXISTS subquery
;
scalar_exp : scalar_exp '+' scalar_exp
| scalar_exp '-' scalar_exp
| scalar_exp '*' scalar_exp
| scalar_exp '/' scalar_exp
| '+' scalar_exp %prec _UMINUS
| '-' scalar_exp %prec _UMINUS
| atom
| column_ref
| function_ref
| ext_function_ref
| tabledotstar
| '(' scalar_exp ')'
;
function_ref : _AMMSC '(' '*' ')'
| _AMMSC '(' _DISTINCT column_ref ')'
| _AMMSC '(' _ALL scalar_exp ')'
| _AMMSC '(' scalar_exp ')'
;
ext_function_ref:
_NAME '(' opt_spparamlist ')'
;
atom : parameter_ref
| literal
;
column_ref : column_ref '[' _INTNUM ']'
| _NAME
| _NAME '.' _NAME
| _NAME '.' _NAME '.' _NAME
;
correlation_name: _NAME
;
derived_column_list
: column_ref_commalist
;
insert_atom : atom
| _NULLX
;
into_clause : _INTO target_commalist
;
literal : _STRING
| _INTNUM
| _APPROXNUM
;
ordering_spec : _INTNUM opt_asc_desc
| column_ref opt_asc_desc
;
parameter : _PARAMETER
;
parameter_ref : parameter_ref '[' _INTNUM ']'
| parameter
;
range_variable : _NAME
;
spparam : atom opt_inout
;
target : parameter_ref
;
assignment_commalist
: assignment
| assignment_commalist ',' assignment
;
atom_commalist : atom
| atom_commalist ',' atom
;
column_ref_commalist
: column_ref
| column_ref_commalist ',' column_ref
;
insert_atom_commalist
: insert_atom
| insert_atom_commalist ',' insert_atom
;
ordering_spec_commalist
: ordering_spec
| ordering_spec_commalist ',' ordering_spec
;
paren_column_ref_commalist
: '(' column_ref_commalist ')'
;
scalar_exp_commalist
: scalar_exp
| scalar_exp_commalist ',' scalar_exp
;
spparam_commalist
: spparam
| spparam_commalist ',' spparam
;
table_ref_commalist
: table_ref
| table_ref_commalist ',' table_ref
;
target_commalist: target
| target_commalist ',' target
;
opt_all_distinct: /* Empty */
| _ALL
| _DISTINCT
;
opt_as : /* Empty */
| _AS
;
opt_asc_desc : /* Empty */
| _ASC
| _DESC
;
opt_derived_column_list
: /* Empty */
| '(' derived_column_list ')'
;
opt_escape : /* Empty */
| _ESCAPE atom
;
opt_group_by_clause
: /* Empty */
| _GROUP _BY column_ref_commalist
;
opt_having_clause
: /* Empty */
| _HAVING search_condition
;
opt_inout : /* Empty */
| _IN
| _OUT
| _INOUT
;
opt_into_clause : /* Empty */
| into_clause
;
opt_join_type : /* Empty */
| join_type
;
opt_order_by_clause
: /* Empty */
| _ORDER _BY ordering_spec_commalist
;
opt_outer : /* Empty */
| _OUTER
;
opt_spresulteq : /* Empty */
| parameter_ref '='
;
opt_spparamlist
: /* Empty */
| spparam_commalist
;
opt_where_clause: /* Empty */
| where_clause
;

Back to Top
```
