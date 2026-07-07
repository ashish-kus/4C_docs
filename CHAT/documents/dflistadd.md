---
title: "sys.dflist_add()"
description: "adds a new choice to a list type 4C display fiel"
weight: 58
draft: false
---

## Purpose

`sys.dflist_add()` adds a new choice to a list type 4C display field

## Usage

```text
ret = sys.dflist_add(<dflabel>,<str>);
```

## Arguments

- `integer` — `<dflabel>` - This should be the DFLABEL of the display
field.
- `alpha` — `<str>` - The choice to add to the list.

## Returns

integer `<ret>`
- `0` — OK
- `< 0` — Invalid `<dflabel>`, or cur program is not a screen program

## Where Used

`sys.dflist_add()` can be called from any screen program that is open. You can not call `sys.dflist_add()` in the InitPCL.

## Description

`sys.dflist_add()` adds a  choice to a list type display field. The list type display fields are:

sellist

inplist

chkbox

rbgroup

## See Also

[`sys.dflist_clear()`]({{< ref "dflistclear.md" >}})

Back to Top

## See Also

- [sys.dflist_clear()]({{< ref "dflistclear.md" >}})

