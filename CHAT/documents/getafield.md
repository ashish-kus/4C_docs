---
title: "sys.get_afield()"
description: "returns an alpha value from an alpha field by name"
weight: 116
draft: false
---

## Purpose

`sys.get_afield()` returns an alpha value from an alpha field by name.

## Usage

```text
aval = sys.get_afield([<asprog>], <asfilename>, <fieldname>);
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

- `alpha` — `<aval>` - The value in field `<fieldname>`
- `""` — Possible error, but could also mean that `<fieldname>` has the
value "".

## Where Used

`sys.get_afield()` can be called from anywhere. It may be used in report/screen writers that do not know what fields they are using until runtime.

## Description

`sys.get_afield()` locates the field identified by `<fieldname>` and returns the value in it. `sys.get_afield()` is meant to be used when you don't know the field to get until runtime.

## Bugs/Features/Comments

If `<fieldname>` is not an alpha type, no error is indicated, and a null string will be returned.

## See Also

[`sys.get_fmtfield()`]({{< ref "getfmtfield.md" >}})

[`sys.get_ffield()`]({{< ref "getffield.md" >}})

[`sys.get_ifield()`]({{< ref "getifield.md" >}})

[`sys.put_fmtfield()`]({{< ref "putfmtfield.md" >}})

[`sys.put_afield()`]({{< ref "putafield.md" >}})

[`sys.put_ffield()`]({{< ref "putffield.md" >}})

[`sys.put_ifield()`]({{< ref "putifield.md" >}})

Back to Top

## See Also

- [sys.get_fmtfield() sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "getfmtfield.md" >}})
- [sys.get_ffield() sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "getffield.md" >}})
- [sys.get_ifield() sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "getifield.md" >}})
- [sys.put_fmtfield() sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "putfmtfield.md" >}})
- [sys.put_afield() sys.put_ffield() sys.put_ifield()]({{< ref "putafield.md" >}})
- [sys.put_ffield() sys.put_ifield()]({{< ref "putffield.md" >}})
- [sys.put_ifield()]({{< ref "putifield.md" >}})

