# sys.dr_init()

## Purpose

`sys.dr_init()` initializes the sequential reading of a file.

## Usage

```text
ret = sys.dr_init(<asfile>,<fldnum>,<matchflag> [, <seektype> ]);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file to read sequentially.
- `integer <fldnum>` — The CDefine of the field in `<asfile>`
to use as the last non varying part of the key.
`<fldnum>` must be a key field in file `<asfile>`.
- `integer <matchflag>` — must be MATCH_FULL or MATCH_PARTIAL only.
If `<fldnum>` is alpha, then MATCH_PARTIAL means that the only
unvarying part of `<fldnum>` is up to its current length.
MATCH_FULL means that even trailing spaces are non varying.
- `integer <seektype>` — Optional arg that can be either SEEK_START or SEEK_END.
The default is SEEK_START.
If you specify SEEK_END, then the meaning of F_DRNEXT/F_SEQNEXT and F_DRPREV/F_SEQPREV are
reversed.

## Returns

integer `<ret>`
- `0` — This is the only return

## Where Used

`sys.dr_init()` can be called anytime that sequential reading of a file is required. This most often will be inside of a DrInit PCL.

## Example

```text
In the display field maintenance program, sys.df.maint1,
there is a driver for sys.spc_action.
It is run when deleting fields in order to delete all
fkey definitions for that field.
The DrInit PCL for sys.spc_action is sadrinit().
Here is the code:




sys.spca_prname = sys.df_prname ;
sys.spca_varname = sys.df_fieldname ;
sys.dr_init(sys.spc_action,S_SPCAVARNAME,MATCH_FULL);




By specifying MATCH_FULL, only rcds that match the current values
of sys.spca_prname and sys.spca_varname will be read.
As soon as one of these changes, 4C returns EOF.
In the case of a driver, 4C will run the SelEof PCL.
The final part of the key sys.spca_spc is allowed to vary.
Since S_SPCAVARNAME references a primary key field, the
sys.spc_action is read by primary key during the DrSel state.
```

## Description

`sys.dr_init()` is used to specify a range of rcds that will be read sequentially. Normally, this is done in a DrInit PCL for a particular driver, but it also will work if you do your own sequential reading using [`sys.read_file()`]({{< ref "readfile.md" >}}). Before calling `sys.dr_init()`, the values must be set in ALL key fields up to and including the field referenced by `<fldnum>`. Any key fields following `<fldnum>` do not need to be set, and are allowed to vary during the sequential reading. By specifying a `<fldnum>` that references a secondary key, 4C will read the file by that secondary key. The `<matchflag>` is used to specify if the entire field referenced by `<fldnum>` (including trailing spaces) must not vary (MATCH_FULL), or if trailing spaces in the current value are allowed to vary (MATCH_PARTIAL). MATCH_PARTIAL has no meaning for non alpha fields.

## See Also

[`sys.dr_range()`]({{< ref "drrange.md" >}})

[`sys.read_file()`]({{< ref "readfile.md" >}})

[`sys.seek_key()`]({{< ref "seekkey.md" >}})

[`sys.set_ekey()`]({{< ref "setekey.md" >}})

[`sys.set_skey()`]({{< ref "setskey.md" >}})

Back to Top

## See Also

- [sys.dr_range()]({{< ref "drrange.md" >}})
- [sys.read_file()]({{< ref "readfile.md" >}})
- [sys.seek_key()]({{< ref "seekkey.md" >}})
- [sys.set_ekey()]({{< ref "setekey.md" >}})
- [sys.set_skey()]({{< ref "setskey.md" >}})


