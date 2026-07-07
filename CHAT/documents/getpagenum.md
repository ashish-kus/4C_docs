---
title: "sys.get_pagenum()"
description: "returns the current page number"
weight: 169
draft: false
---

## Purpose

`sys.get_pagenum()` returns the current page number.

## Usage

```text
pagenum = sys.get_pagenum();
```

## Arguments

None

## Returns

- `pagenum` — the current page number of the device being used by the
current program.

## Where Used

`sys.get_pagenum()` can be called from anywhere. It will normally be used when printing headers for reports.

## Example

```text
     The following line is used as a StartFld PCL for the sys.rpt.phdr80
program for the pagenumber field.
sys.rpt.phdr80 is used in the sys.prmem example reports as a page hdr.



pagenumber = sys.get_pagenum();
```

## Description

`sys.get_pagenum()` returns the current pagenum of the device that the current program is printing on. This is meant as a replacement of the PCL "`sys.page_number()`". The reason for adding this PCL is that `sys.page_number()` sounds more like a variable name than a PCL. I think that by using PCLs that sound like verbs they are easier to remember. `sys.page_number()` will still work as before, but I would suggest using `sys.get_pagenum()` instead.

## See Also

[`sys.get_linenum()`]({{< ref "getlinenum.md" >}}) [`sys.get_linediff()`]({{< ref "getlinediff.md" >}}) [`sys.get_pagediff()`]({{< ref "getpagediff.md" >}})

Back to Top

