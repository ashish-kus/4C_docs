---
title: "sys.get_fdfval()"
description: "returns the float value of a display field"
weight: 139
draft: false
---

## Purpose

`sys.get_fdfval()` returns the float value of a display field.

## Usage

```text
fval = sys.get_fdfval(<DFLABEL>);
```

## Arguments

- `<DFLABEL>` — The label for the field.
- `This is an integer from 0 to num display fields` — 1.
sys.cur_field may be used.

## Returns

The float value of the display field.
- `-1.0` — possible error

## Where Used

`sys.get_fdfval()` can be called from anywhere but will probably be called from a verify pcl for a display field.

## Description

`sys.get_fdfval()` returns the float value of a display field. You may want to use this in the verify PCL for a display field if you need to do some type of special formatting. You can use this in a global PCL and not need to know the name of a display field in order to get its value. Just pass sys.cur_field as the `<DFLABEL>`.

## Bugs/Features/Comments

It is impossible to tell if a -1.0 return means an error or if the value of the field really is -1.0. However, the only errors are DFLABEL out of range, or the data type of the display field is not a float.

## See Also

[`sys.get_adfval()`]({{< ref "getadfval.md" >}}) [`sys.get_idfval()`]({{< ref "getidfval.md" >}}) `sys.get_fdfval()`

Back to Top

