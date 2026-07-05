# sys.fl_save()

## Purpose

`sys.fl_save()` saves the current values of one or more fields from 1 file.

## Usage

```text
ret = sys.fl_save([<name>,] <asfile> [,<sfldidx> [, <efldidx]]);
```

## Arguments

- `alpha <name>` — An optional name to identify the save.
- `asfile <asfile>` — The asfile to save fields from
- `integer <sfldidx>` — Optional start fld idx in `<asfile>` to save.
- `integer <efldidx>` — Optional end fld idx in `<asfile>` to save.

## Returns

- `0` — File Variables Saved
- `-1` — Invalid `<asfile>`

## Where Used

`sys.fl_save()` can be called from anywhere.

## Description

`sys.fl_save()` allows you to save current values of file variables in system buffers so that they may be restored to the values when saved as needed. Multiple calls to `sys.fl_save()` using the same `<name>` and `<asfile>` will overrwrite any previously saved values for that combination of `<name>` and `<asfile>`

Specifying `<name>` allows one program to save multiple values from same `<asfile>` and access any of the saved values later. If no `<name>` argument is specified, "Default" is used.

Requirements

`sys.fl_save()` Requires version 5.2 or higher 4C Server.

## Bugs/Features/Comments

Bugs

## See Also

[`sys.fl_restore()`]({{< ref "flrestore.md" >}})

[`sys.restore_share()`]({{< ref "restoreshare.md" >}})

[`sys.get_saveval()`]({{< ref "getsaveval.md" >}})

Back to Top

## See Also

- [sys.fl_restore()]({{< ref "flrestore.md" >}})
- [sys.restore_share()]({{< ref "restoreshare.md" >}})
- [sys.get_saveval()]({{< ref "getsaveval.md" >}})


