---
title: "sys.dflist_clear()"
description: "clears all choices in a 4c list dfl"
weight: 59
draft: false
---

## Purpose

`sys.dflist_clear()` clears all choices in a 4c list dfld

## Usage

```text
ret = sys.dflist_clear(<dflabel>);
```

## Arguments

- `integer` — `<dflabel>` - This should be the DFLABEL of the display
field.

## Returns

integer `<ret>`
- `0` — OK
- `< 0` — Invalid `<dflabel>`, or cur program is not a screen program

## Where Used

`sys.dflist_clear()` can be called from any screen program that is open. You can not call `sys.dflist_clear()` in the InitPCL.

## Description

`sys.dflist_clear()` clears all choices in a list type display field. The list type display fields are:

sellist

inplist

chkbox

rbgroup

## See Also

[`sys.dflist_add()`]({{< ref "dflistadd.md" >}})

Back to Top

## See Also

- [sys.dflist_add()]({{< ref "dflistadd.md" >}})

