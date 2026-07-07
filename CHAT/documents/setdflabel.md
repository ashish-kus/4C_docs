---
title: "sys.set_dflabel()"
description: "changes the label associated with a display field"
weight: 284
draft: false
---

## Purpose

`sys.set_dflabel()` changes the label associated with a display field.

## Usage

```text
ret = sys.set_dflabel(<dflabel>,<newlabel>);
```

## Arguments

- `integer` — `<dflabel>` - This should be the DFLABEL of the display
field.
- `alpha` — `<newlabel>` - The new label.

## Returns

integer `<ret>`
- `0` — OK
- `< 0` — Invalid `<dflabel>`, or cur program is not a screen program

## Where Used

`sys.set_dflabel()` can be called from any screen program that is open. You can not call `sys.set_dflabel()` in the InitPCL.

## Description

`sys.set_dflabel()` changes the label of a 4C display field. The display field must have a label associated with it at compile time. `sys.set_dflabel()` works with any field that has a side label or top label. The total length of the label is never changed.

## Bugs/Features/Comments

The original label should be as long as or longer than any new label that you will use for that dfield. Otherwise it may be truncated, or in some cases completely hidden, when changed.

## See Also

Back to Top

