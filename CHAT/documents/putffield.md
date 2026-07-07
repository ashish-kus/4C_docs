---
title: "sys.put_ffield()"
description: "stores a float value in a float field by name"
weight: 247
draft: false
---

## Purpose

`sys.put_ffield()` stores a float value in a float field by name.

## Usage

```text
ret = sys.put_ffield([<asprog>], <asfilename>, <fieldname>, <fval>);
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
- `float <fval>` — The float value to store in `<fieldname>`.

## Returns

- `0` — OK - `<fval>` stored in `<fieldname>`
- `-1` — Error - Either `<asprog>` or `<asfilename>` or `<fieldname>`
is invalid.

## Where Used

`sys.put_ffield()` can be called from anywhere. It may be used in report/screen writers that do not know what fields they are using until runtime.

## Description

`sys.put_ffield()` locates the field identified by `<fieldname>` and stores `<fval>` in it. `sys.put_ffield()` is meant to be used when you don't know the field to store into until runtime.

## Bugs/Features/Comments

If `<fieldname>` is not a float type, no error is indicated, but no value is stored either.

## See Also

[`sys.get_fmtfield()`]({{< ref "getfmtfield.md" >}})

[`sys.get_afield()`]({{< ref "getafield.md" >}})

[`sys.get_ffield()`]({{< ref "getffield.md" >}})

[`sys.get_ifield()`]({{< ref "getifield.md" >}})

[`sys.put_fmtfield()`]({{< ref "putfmtfield.md" >}})

[`sys.put_afield()`]({{< ref "putafield.md" >}})

[`sys.put_ifield()`]({{< ref "putifield.md" >}})

Back to Top

## See Also

- [sys.get_fmtfield() sys.get_afield() sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ifield()]({{< ref "getfmtfield.md" >}})
- [sys.get_afield() sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ifield()]({{< ref "getafield.md" >}})
- [sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ifield()]({{< ref "getffield.md" >}})
- [sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ifield()]({{< ref "getifield.md" >}})
- [sys.put_fmtfield() sys.put_afield() sys.put_ifield()]({{< ref "putfmtfield.md" >}})
- [sys.put_afield() sys.put_ifield()]({{< ref "putafield.md" >}})
- [sys.put_ifield()]({{< ref "putifield.md" >}})

