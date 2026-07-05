---
title: "sys.fl_setval()"
description: "- Converts an alpha to the appropriat"
weight: 105
draft: false
---

## Purpose

`sys.fl_setval()` - Converts an alpha to the appropriate datatype and stores it in a file variable.

## Usage

```text
ret = sys.fl_setval(<asfile>,<fldidx>,<aval>);
```

## Arguments

- `asfile <asfile>` — The asfile associated with the file variable
you are setting.
- `integer <fldidx>` — The idx of the fld in `<asfile>`.
Normally, you will use the CDEFINE for the fld.
- `alpha <aval>` — The value to convert and store into the file variable.

## Returns

- `-1` — Error - Invalid `<asfile>` or `<fldidx>`
- `0` — File var set OK

## Where Used

`sys.fl_setval()` can be called from anywhere.

## Example

```text
The global system PCL sys.rcd_exists() has an example of using
sys.fl_setval().
```

## Description

`sys.fl_setval()` converts `<aval>` to the appropriate datatype and stores it into the file variable associated with `<asfile>` and `<fldidx>`. This can be useful in situations where you cannot reference a file variable simply by name as in the case of dynamic files.

## See Also

[`sys.fl_getval()`]({{< ref "flgetval.md" >}})

[`sys.get_dfile()`]({{< ref "getdfile.md" >}})

Back to Top

## See Also

- [sys.fl_getval()]({{< ref "flgetval.md" >}})
- [sys.get_dfile()]({{< ref "getdfile.md" >}})

