---
title: "sys.get_ffield()"
description: "returns a float value from a float field by name"
weight: 140
draft: false
---

## Purpose

`sys.get_ffield()` returns a float value from a float field by name.

## Usage

```text
fval = sys.get_ffield([<asprog>], <asfilename>, <fieldname>);
```

## Arguments

- `asprog <asprog>` — The asprog name of the program to use to find
`<asfilename>` and `<fieldname>`.
This is an optional argument, and if not used, the current program
is assumed.
- `alpha <asfilename>` — The asfile name of the file containing `<fieldname>`.
This must be passed in quotes, or in an alpha variable.
- `alpha <fieldname>` — The name of the field who's value you want.
This must be passed in quotes, or in an alpha variable.
Dimesioned variables can be used also using a format like
"field[n]"

## Returns

- `float` — `<fval>` - The value in field `<fieldname>`
- `-1.0` — Possible error, but could also mean that `<fieldname>` has the
value -1.0.

## Where Used

`sys.get_ffield()` can be called from anywhere. It may be used in report/screen writers that do not know what fields they are using until runtime.

## Description

`sys.get_ffield()` locates the field identified by `<fieldname>` and returns the value in it. `sys.get_ffield()` is meant to be used when you don't know the field to get until runtime.

## Bugs/Features/Comments

If `<fieldname>` is not a float type, no error is indicated, and -1.0 will be returned.

## See Also

[`sys.get_fmtfield()`]({{< ref "getfmtfield.md" >}})

[`sys.get_afield()`]({{< ref "getafield.md" >}})

[`sys.get_ifield()`]({{< ref "getifield.md" >}})

[`sys.put_fmtfield()`]({{< ref "putfmtfield.md" >}})

[`sys.put_afield()`]({{< ref "putafield.md" >}})

[`sys.put_ffield()`]({{< ref "putffield.md" >}})

[`sys.put_ifield()`]({{< ref "putifield.md" >}})

Back to Top

## See Also

- [sys.get_fmtfield() sys.get_afield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "getfmtfield.md" >}})
- [sys.get_afield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "getafield.md" >}})
- [sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "getifield.md" >}})
- [sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "putfmtfield.md" >}})
- [sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "putafield.md" >}})
- [sys.put_ffield() sys.put_ifield()]({{< ref "putffield.md" >}})
- [sys.put_ifield()]({{< ref "putifield.md" >}})

