# sys.commit()

## Purpose

`sys.commit()` commits a 4C transaction.

## Usage

```text
ret = sys.commit(<tname>);
```

## Arguments

- `alpha <tname>` — A program specific name for the transaction.
This name must be the same used that started the transaction.

## Returns

- `0` — Transaction committed
- `-1` — Either the transaction specified by `<tname>` does not exist or
the transaction was aborted.  Check sys.errno for ABORT_ERR.
Transactions may be aborted due to deadlock situations.

## Where Used

`sys.commit()` can be called from anywhere, but it can only commit a transaction started within the same 4c program.

When possible you should try to use `sys.commit()` within the same PCL that called [`sys.begin()`]({{< ref "begin.md" >}}).

## Example

```text
See

sys.begin()

for example code.
```

## Description

`sys.commit()` commits the transaction specified by `<tname>` as well as any nested transactions. Only explicit transactions started by the application can be committed by the application and the transaction must have been started by the same 4C program that calls `sys.commit()`. You cannot start transaction, "T1", in programA, push ProgramB and commit the transaction, "T1", in progranB.

## Bugs/Features/Comments

See the discussion in

External Database Files

for more details on 4C transactions.

## See Also

[`sys.begin()`]({{< ref "begin.md" >}})

[`sys.rollback()`]({{< ref "rollback.md" >}})

External Database Files

Back to Top

## See Also

- [sys.begin()]({{< ref "begin.md" >}})
- [External Database Files]({{< ref "../Features/Database/dbfiles.md" >}})
- [sys.rollback()]({{< ref "rollback.md" >}})


