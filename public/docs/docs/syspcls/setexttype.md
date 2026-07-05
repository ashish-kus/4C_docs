# sys.set_exttype()

## Purpose

`sys.set_exttype()` Changes the external type of the `<asfile>` for the current program.

## Usage

```text
ret = sys.set_exttype(<asfile>,<exttype> [, <extflags> ]);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file you are setting the
external type of.
- `alpha <exttype>` — A valid exttype for the current application
- `integer <extflags>` — An optional argument that can be combinations of EXTTYPE_FILE,
EXTTYPE_PROGRAM, and EXTTYPE_ALL.
When not specified EXTTYPE_FILE is the default.

## Returns

- `None` — the type is always set.
If the file is not an External type file, the ext type is ignored
when accessing the file.
If `<exttype>` is not valid, you won't find this out until the
file is accessed.

## Where Used

`sys.set_exttype()` can be called from anywhere.

## Description

Use `sys.set_exttype()` to change the External type of a 4C file. You may want to do this if you are copying data from one database to another. The optional flags mean

EXTTYPE_FILE - set for singe `<asfile>`. All accesses to that file will use the specified external type.

EXTTYPE_PROGRAM - All explicit SQL statements in the crrent program will use the specified external type.

EXTTYPE_ALL - This will set the XLEXTTYPE env var to the specified type so that any explicit SQL statements in any program that do not override the external type use the specified external type. Any future file opens of external files with ExtType set to XLEXTTYPE will also be affected.

## See Also

[`sys.get_exttype()`]({{< ref "getexttype.md" >}})

Back to Top

## See Also

- [sys.get_exttype()]({{< ref "getexttype.md" >}})


