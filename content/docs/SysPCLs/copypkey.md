---
title: "sys.copy_pkey()"
description: "copies the primary key fields of 1 file to the primary key fields of another file"
weight: 50
draft: false
---

## Purpose

`sys.copy_pkey()` copies the primary key fields of 1 file to the primary key fields of another file.

## Usage

```text
ret = sys.copy_pkey([ <fromasprog>, ] <fromasfile>, [ <toasprog>, ] <toasfile>);
```

## Arguments

- `alpha` — `<fromasprog>` - Optional arg to specify the name of the 4C program to find `<fromasfile>`.
If not specified, the the current program is used.
- `asfile` — `<fromasfile>` - The 4C asfile to copy from.
- `alpha` — `<toasprog>` - Optional arg to specify the name of the 4C program to find `<toasfile>`.
If not specified, the the current program is used.
- `asfile` — `<toasfile>` - The 4C asfile to copy to.

## Returns

- `< 0` — Some error
- `0` — OK

## Where Used

`sys.copy_pkey()` can be called from anywhere.

## Description

`sys.copy_pkey()` copies the values in the primary key field buffers in memory of 1 4c file to the primary key field buffer in memory of another 4c file. Fields with incompatible fields types in the 2 files are skipped.

Requirements

4cserver version 6.4.5 or later

## See Also

[`sys.copy_file()`]({{< ref "copyfile.md" >}})

[`sys.copy_fields()`]({{< ref "copyfields.md" >}})

[`sys.null_file()`]({{< ref "nullfile.md" >}})

[`sys.null_data()`]({{< ref "nulldata.md" >}})

Back to Top

## See Also

- [sys.copy_file()]({{< ref "copyfile.md" >}})
- [sys.copy_fields()]({{< ref "copyfields.md" >}})
- [sys.null_file()]({{< ref "nullfile.md" >}})
- [sys.null_data()]({{< ref "nulldata.md" >}})

