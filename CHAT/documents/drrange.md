---
title: "sys.dr_range()"
description: "allows you to set the start and end range o"
weight: 68
draft: false
---

## Purpose

`sys.dr_range()` allows you to set the start and end range of rcds to be read for a driver.

## Usage

```text
sys.dr_range(<asfile>,<fldcdef>,<sval>,<eval>,<matchtype>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the driver being run.
- `integer <fldcdef>` — The fld num in asfile to use for setting the range.
This should be passed as a CDEFINE.
- `alpha <sval>` — Starting val in range.
This must be passed as an alpha.
4C will convert it to the proper type.
- `alpha <eval>` — Ending val in range.
This must be passed as an alpha.
4C will convert it to the proper type.
- `integer <matchtype>` — This can be MATCH_FULL or MATCH_PARTIAL only.

## Returns

None

## Where Used

`sys.dr_range()` can ONLY be called from the DrInit PCL of any driver.

## Description

`sys.dr_range()` allows you to specify a range rcds in the driver file by specifying a range of values for ONE field in the driver file. You pass in the start and end values that the field will have and a flag specifying either MATCH_FULL, or MATCH_PARTIAL. MATCH_FULL specifies that trailing blanks for an alpha key must match also. All key fields before the specified field must be set before calling `sys.dr_range()`.

## See Also

[`sys.set_skey()`]({{< ref "setskey.md" >}})

[`sys.set_ekey()`]({{< ref "setekey.md" >}})

[`sys.seek_key()`]({{< ref "seekkey.md" >}})

[`sys.dr_init()`]({{< ref "drinit.md" >}})

Back to Top

## See Also

- [sys.set_skey()]({{< ref "setskey.md" >}})
- [sys.set_ekey()]({{< ref "setskey.md" >}})
- [sys.seek_key()]({{< ref "seekkey.md" >}})
- [sys.dr_init()]({{< ref "drinit.md" >}})

