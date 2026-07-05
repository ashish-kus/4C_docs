---
title: "sys.get_idfval()"
description: "returns the integer value of a display field"
weight: 154
draft: false
---

## Purpose

`sys.get_idfval()` returns the integer value of a display field.

## Usage

```text
ival = sys.get_idfval(<DFLABEL>);
```

## Arguments

- `<DFLABEL>` — The label for the field.
- `This is an integer from 0 to num display fields` — 1.
sys.cur_field may be used.

## Returns

The integer value of the display field.
- `-1` — possible error

## Where Used

`sys.get_idfval()` can be called from anywhere but will probably be called from a verify pcl for a display field.

## Description

`sys.get_idfval()` returns the integer value of a display field. You may want to use this in the verify PCL for a display field if you need to do some type of special formatting. You can use this in a global PCL and not need to know the name of a display field in order to get its value. Just pass sys.cur_field as the `<DFLABEL>`.

## Bugs/Features/Comments

It is impossible to tell if a -1 return means an error or if the value of the field really is -1. However, the only errors are DFLABEL out of range, or the data type of the display field is not an integer.

## See Also

[`sys.get_adfval()`]({{< ref "getadfval.md" >}}) `sys.get_idfval()` [`sys.get_fdfval()`]({{< ref "getfdfval.md" >}})

Back to Top

