---
title: "sys.fl_restore()"
description: "- restore one or more fields for 1 asfile from a previously saved value"
weight: 102
draft: false
---

## Purpose

`sys.fl_restore()` - restore one or more fields for 1 asfile from a previously saved value.

## Usage

```text
ret = sys.fl_restore([<name>,]<asfile> [,<sfldidx> [, <efldidx]]);
```

## Arguments

- `alpha <name>` — An optional name that identifies a previous save.
- `asfile <asfile>` — The asfile with previously saved fields to restore fields to
- `integer <sfldidx>` — Optional start fld idx in `<asfile>` to restore.
- `integer <efldidx>` — Optional end fld idx in `<asfile>` to restore.

## Returns

- `0` — File Variables restored to previously saved values.
- `-1` — Invalid `<asfile>`

## Where Used

`sys.fl_restore()` can be called from anywhere.

## Example

```text
Example
```

## Description

`sys.fl_restore()` can be used to restore previously saved values of fields from a single asfile back to the same asfile.

Requirements

[`sys.fl_save()`]({{< ref "flsave.md" >}}) Requires version 5.2 or higher 4C Server.

## Bugs/Features/Comments

Restoring fld values that haven't been previously saved using [`sys.fl_save()`]({{< ref "flsave.md" >}}) is not flagged as an error.

## See Also

`sys.fl_restore()`

[`sys.restore_share()`]({{< ref "restoreshare.md" >}})

[`sys.get_saveval()`]({{< ref "getsaveval.md" >}})

Back to Top

## See Also

- [sys.fl_restore()]({{< ref "flsave.md" >}})
- [sys.restore_share()]({{< ref "restoreshare.md" >}})
- [sys.get_saveval()]({{< ref "getsaveval.md" >}})

