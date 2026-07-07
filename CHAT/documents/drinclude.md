---
title: "sys.dr_include()"
description: "allows you to include fields other tha"
weight: 63
draft: false
---

## Purpose

`sys.dr_include()` allows you to include fields other than primary key fields and sort key fields in the 4C driver file.

## Usage

```text
ret = sys.dr_include(<asfile>,<fldcdef>,[<flag>]);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file containing
the field to include.
- `integer <fldcdef>` — The CDEFINE of the field to include.
- `integer <flag>` — This is an optional argument and currently
can have the values DR_NOCLR or DR_CLR only.
If not specified, then fields from the driver file are not
cleared before the DrSelect PCL, but other fields are.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — No current driver, or current driver not in DRINIT state.

## Where Used

`sys.dr_include()` can be called ONLY from the DrInit PCL. It always applies to the current driver. It makes no difference where during the DrInit PCL that `sys.dr_include()` is called.

## Example

```text
In the program sys.prmem.rpt2.2, three data fields
are included in the 4C driver file.
This means that the file sys.file_hdr will not need to be
read during the DrProc PCL or during field processing
in order to access those fields.
The relevant code from drinit() follows:




sys.dr_include(sys.file_hdr,S_FHSYSSIZE);
sys.dr_include(sys.file_hdr,S_FHUSRSIZE);
sys.dr_include(sys.file_hdr,S_FHSEQSIZE);
```

## Description

The purpose of `sys.dr_include()` is to allow values that need a lot of time to calculate to be calculated only once. This is necessary on scrolling screens that may redisplay the same rcd multiple times. If the computed val won't change during the scrolling screens life, and it requires a lot of time to calculate, then `sys.dr_include()` may speed up that particular scrolling screen.

`sys.dr_include()` can also save processing time in reports by avoiding file rereads. When values are needed both in the DrSort PCL and the DrProc PCL using `sys.dr_include()` will make the extra file read in the DrProc PCL unnecessary.

There is never any point to calling `sys.dr_include()` for fields in the main driver file itself since 4C always reads this file before the DrProc PCL.

Fields that are dr included, but are not fields from the driver file will be cleared as a default before the DrSelect PCL is run. This action can be overriden by specifying DR_NOCLR in the `sys.dr_include()` call. Fields that are dr included, and are fields in the driver file will not be cleared before the DrSelect PCL is run unless DR_CLR was specified in the `sys.dr_include()` call.

## See Also

[`sys.dr_init()`]({{< ref "drinit.md" >}})

[`sys.sort_by()`]({{< ref "sortby.md" >}})

Back to Top

## See Also

- [sys.dr_init()]({{< ref "drinit.md" >}})
- [sys.sort_by()]({{< ref "sortby.md" >}})

