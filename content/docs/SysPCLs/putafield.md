---
title: "sys.put_afield()"
description: "stores an alpha value in an alpha field by name"
weight: 245
draft: false
---

## Purpose

`sys.put_afield()` stores an alpha value in an alpha field by name.

## Usage

```text
ret = sys.put_afield([<asprog>], <asfilename>, <fieldname>, <aval>);
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
- `alpha <aval>` — The alpha value to store in `<fieldname>`.

## Returns

- `0` — OK - `<aval>` stored in `<fieldname>`
- `-1` — Error - Either `<asprog>` or `<asfilename>` or `<fieldname>`
is invalid.

## Where Used

`sys.put_afield()` can be called from anywhere. It may be used in report/screen writers that do not know what fields they are using until runtime.

## Description

`sys.put_afield()` locates the field identified by `<fieldname>` and stores `<aval>` in it. `sys.put_afield()` is meant to be used when you don't know the field to store into until runtime.

## Bugs/Features/Comments

If `<fieldname>` is not an alpha type, no error is indicated, but no value is stored either.

## See Also

[`sys.get_fmtfield()`]({{< ref "getfmtfield.md" >}})

[`sys.get_afield()`]({{< ref "getafield.md" >}})

[`sys.get_ffield()`]({{< ref "getffield.md" >}})

[`sys.get_ifield()`]({{< ref "getifield.md" >}})

[`sys.put_fmtfield()`]({{< ref "putfmtfield.md" >}})

[`sys.put_ffield()`]({{< ref "putffield.md" >}})

[`sys.put_ifield()`]({{< ref "putifield.md" >}})

Back to Top

## See Also

- [sys.get_fmtfield() sys.get_afield() sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_ffield() sys.put_ifield()]({{< ref "getfmtfield.md" >}})
- [sys.get_afield() sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_ffield() sys.put_ifield()]({{< ref "getafield.md" >}})
- [sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_ffield() sys.put_ifield()]({{< ref "getffield.md" >}})
- [sys.get_ifield() sys.put_fmtfield() sys.put_ffield() sys.put_ifield()]({{< ref "getifield.md" >}})
- [sys.put_fmtfield() sys.put_ffield() sys.put_ifield()]({{< ref "putfmtfield.md" >}})
- [sys.put_ffield() sys.put_ifield()]({{< ref "putffield.md" >}})
- [sys.put_ifield()]({{< ref "putifield.md" >}})

