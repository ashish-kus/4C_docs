# sys.put_ifield()

## Purpose

`sys.put_ifield()` stores an integer value in an integer field by name.

## Usage

```text
ret = sys.put_ifield([<asprog>], <asfilename>, <fieldname>, <ival>);
```

## Arguments

- `asprog <asprog>` — The asprog name of the program to use to find
`<asfilename>` and `<fieldname>`.
This is an optional argument, and if not used, the current program
is assumed.
- `alpha <asfilename>` — The asfile name of the file containing `<fieldname>`.
This must be passed in quotes, or in an alpha variable.
- `alpha <fieldname>` — The name of the field you want to store the value.
This must be passed in quotes, or in an alpha variable.
Dimesioned variables can be used also using a format like
"field[n]"
- `integer <ival>` — The integer value to store in `<fieldname>`.

## Returns

- `0` — OK - `<ival>` stored in `<fieldname>`
- `-1` — Error - Either `<asprog>` or `<asfilename>` or `<fieldname>`
is invalid.

## Where Used

`sys.put_ifield()` can be called from anywhere. It may be used in report/screen writers that do not know what fields they are using until runtime.

## Description

`sys.put_ifield()` locates the field identified by `<fieldname>` and stores `<ival>` in it. `sys.put_ifield()` is meant to be used when you don't know the field to store into until runtime.

## Bugs/Features/Comments

If `<fieldname>` is not an integer type, no error is indicated, but no value is stored either.

## See Also

[`sys.get_fmtfield()`]({{< ref "getfmtfield.md" >}})

[`sys.get_afield()`]({{< ref "getafield.md" >}})

[`sys.get_ffield()`]({{< ref "getffield.md" >}})

[`sys.get_ifield()`]({{< ref "getifield.md" >}})

[`sys.put_fmtfield()`]({{< ref "putfmtfield.md" >}})

[`sys.put_afield()`]({{< ref "putafield.md" >}})

[`sys.put_ffield()`]({{< ref "putffield.md" >}})

Back to Top

## See Also

- [sys.get_fmtfield() sys.get_afield() sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield()]({{< ref "getfmtfield.md" >}})
- [sys.get_afield() sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield()]({{< ref "getafield.md" >}})
- [sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield()]({{< ref "getffield.md" >}})
- [sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield()]({{< ref "getifield.md" >}})
- [sys.put_fmtfield() sys.put_afield() sys.put_ffield()]({{< ref "putfmtfield.md" >}})
- [sys.put_afield() sys.put_ffield()]({{< ref "putafield.md" >}})
- [sys.put_ffield()]({{< ref "putffield.md" >}})


