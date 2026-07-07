---
title: "sys.rollback()"
description: "rolls back a 4C transaction"
weight: 260
draft: false
---

## Purpose

`sys.rollback()` rolls back a 4C transaction.

## Usage

```text
ret = sys.rollback(<tname>);
```

## Arguments

- `alpha <tname>` — A program specific name for the transaction.
This name must be the same used that started the transaction.

## Returns

- `0` — Transaction rolled back
- `-1` — The transaction specified by `<tname>` does not exist

## Where Used

`sys.rollback()` can be called from anywhere, but it can only rollback a transaction started within the same 4C program.

When possible you should try to use `sys.rollback()` within the same PCL that called [`sys.begin()`]({{< ref "begin.md" >}}).

## Example

```text
See

sys.begin()

for example code.
```

## Description

`sys.rollback()` rolls back the transaction specified by `<tname>` as well as any nested transactions. Only explicit transactions started by the application can be rolled back by the application and the transaction must have been started by the same 4C program that calls `sys.rollback()`. You cannot start transaction, "T1", in programA, push ProgramB and roll back the transaction, "T1", in progranB.

## Bugs/Features/Comments

See the discussion in

External Database Files

for more details on 4C transactions.

## See Also

[`sys.begin()`]({{< ref "begin.md" >}})

[`sys.commit()`]({{< ref "commit.md" >}})

External Database Files

Back to Top

## See Also

- [sys.begin()]({{< ref "begin.md" >}})
- [External Database Files]({{< ref "../Features/Database/dbfiles.md" >}})
- [sys.commit()]({{< ref "commit.md" >}})

