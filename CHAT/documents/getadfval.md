---
title: "sys.get_adfval()"
description: "returns the alpha value of a display field"
weight: 115
draft: false
---

## Purpose

`sys.get_adfval()` returns the alpha value of a display field.

## Usage

```text
aval = sys.get_adfval(<DFLABEL>);
```

## Arguments

- `<DFLABEL>` — The label for the field.
- `This is an integer from 0 to num display fields` — 1.
sys.cur_field may be used.

## Returns

The alpha value of the display field.
- `Blank` — possible error

## Where Used

`sys.get_adfval()` can be called from anywhere but will probably be called from a verify pcl for a display field.

## Description

`sys.get_adfval()` returns the unformatted alpha value of a display field. You may want to use this in the verify PCL for a display field if you need to do some type of special formatting. You can use this in a global PCL and not need to know the name of a display field in order to get its value. Just pass sys.cur_field as the `<DFLABEL>`.

## Bugs/Features/Comments

It is impossible to tell if a blank return means an error or if the value of the field really is blank. However, the only errors are DFLABEL out of range, or the data type of the display field is not an alpha.

## See Also

`sys.get_adfval()` [`sys.get_idfval()`]({{< ref "getidfval.md" >}}) [`sys.get_fdfval()`]({{< ref "getfdfval.md" >}})

Back to Top

