# sys.begin()

## Purpose

`sys.begin()` starts a new transaction.

## Usage

```text
ret = sys.begin(<tname>,<tflags>);
```

## Arguments

- `alpha <tname>` — A program specific name for the transaction.
This same name must be used when commiting or rolling back
the transaction.
- `integer <tflags>` — Can be either T_DEFAULT or a combination
of any of the following.
T_AUTOCOMMIT
T_4CCOMMIT
T_APPCOMMIT
T_RCDLOCKS
T_NORCDLOCKS
T_READUNCOMMITTED
T_READCOMMITTED
T_REPEATABLEREAD
T_SERIALIZABLE
T_FREEONCOMMIT
T_NOFREEONCOMMIT

## Returns

- `0` — Transaction started
- `-1` — Some Error - Check sys.errno for ABORT_ERR.

## Where Used

`sys.begin()` can be called from anywhere. However, be aware that only the 4C program that called `sys.begin()` can call [`sys.commit()`]({{< ref "commit.md" >}}) or [`sys.rollback()`]({{< ref "rollback.md" >}}) for the same transaction.

When possible you should try to use `sys.begin()` within the same PCL that will be calling [`sys.commit()`]({{< ref "commit.md" >}}) or [`sys.rollback()`]({{< ref "rollback.md" >}}).

## Example

```text
Here is some 4C code that demonstrates using a transaction
while updating 2 files.

     sys.begin("T1",T_APPCOMMIT);
     dtf_key1 = 'AAA'
     dtf_key2 = '዁'
     if (sys.read_file(dt_file,F_MODIFY|F_NOMSG|F_WAIT) < 0) {
       sys.message(SM_ERROR,"Read Failed, Rolling Back Transaction");
       sys.rollback("T1");
       return;
     }
     cm_code = 'KJE001'
     if (sys.read_file(cust_mstr,F_MODIFY|F_NOMSG|F_WAIT) < 0) {
       sys.message(SM_ERROR,"Read Failed, Rolling Back Transaction");
       sys.rollback("T1");
       return;
     }
     cm_callcount += 1;
     if (sys.upd_file(cust_mstr,F_DEFAULT|F_NOMSG) < 0) {
       sys.message(SM_ERROR,"Update Failed, Rolling Back Transaction");
       sys.rollback("T1");
       return;
     }
     dtf_float1 += 1.1;
     dtf_int1 += 1;
     if (sys.upd_file(dt_file,F_DEFAULT|F_NOMSG) < 0) {
       sys.message(SM_ERROR,"Update Failed, Rolling Back Transaction");
       sys.rollback("T1");
       return;
     }
     if (sys.commit("T1") < 0) {
       if (sys.errno == ABORT_ERR)
         sys.message(SM_ERROR,"Transaction Aborted");
     }
```

## Description

`sys.begin()` starts a 4C transaction. You can nest transactions if you like. For each transaction started, you should call either [`sys.commit()`]({{< ref "commit.md" >}}) or [`sys.rollback()`]({{< ref "rollback.md" >}}). If you neglect to commit a transaction that you started with `sys.begin()`, 4C will eventually commit the transaction if the program exits with a 0 exitcode, or 4c will rollback the transaction if the program exits with a negative exitcode. The transaction will also be rolled back if 4C reaches a state earlier in the program than when the transaction was started. This is possible if the EFldPCL of an input field starts a transaction and the user cancels before the application calls [`sys.commit()`]({{< ref "commit.md" >}}). The T_AUTOCOMMIT, T_APPCOMMIT, and T_4CCOMMIT flags are used to override the default commit type of the transaction. The T_READUNCOMMITTED, T_READCOMMITTED, T_REPEATABLEREAD, and T_SERIALIZABLE flags are used to override the default isolation level of the transaction. The T_RCDLOCKS and T_NORCDLOCKS are used to override the default way 4C will lock rcds in the transaction. T_RCDLOCKS means that 4C will obtain an update lock when a rcd is read in an update mode. T_NORCDLOCKS means that 4C will aquire a share lock only. When the file is updated, the share lock will be upgraded to an update lock.

## Bugs/Features/Comments

See the discussion in

External Database Files

for more details on 4C transactions.

New flags will soon be available to specify whether 4C locking should be used in the transaction and at what isolation level the transaction will execute.

## See Also

[`sys.commit()`]({{< ref "commit.md" >}})

[`sys.rollback()`]({{< ref "rollback.md" >}})

External Database Files

Back to Top

## See Also

- [External Database Files]({{< ref "../Features/Database/dbfiles.md" >}})
- [sys.commit()]({{< ref "commit.md" >}})
- [sys.rollback()]({{< ref "rollback.md" >}})


