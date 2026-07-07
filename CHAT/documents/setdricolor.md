---
title: "sys.set_dricolor()"
description: "allows a program to dynamically change th"
weight: 286
draft: false
---

## Purpose

`sys.set_dricolor()` allows a program to dynamically change the background and foreground color of a single item in a scrolling program.

## Usage

```text
ret = sys.set_dricolor(<itemidx>,[<dfidx>,]<fgrgbval>,<bgrgbval>);
```

## Arguments

- `<itemidx>` — integer var, index of line to change.
This is one less than the linenumber.
- `<dfidx>` — An optional integer index (or DFLABEL) of the single display
field you are setting the color for.
- `<fgrgbval>` — alpha var in "rrr:ggg:bbb" format
If `<fgrgbval>` is "", it will not be changed.
If it is "Default", it will change to the programs
default foreground.
- `<bgrgbval>` — alpha var in "rrr:ggg:bbb" format
If `<bgrgbval>` is "", it will not be changed.
If it is "Default", it will change to the programs
default background.

## Returns

-1 return indicates illegal index. O is returned otherwise.

## Where Used

`sys.set_dricolor()` can be called anytime after the line has been added in to the 4C temp file. This most likely will be in the DrSel PCL after calling `sys.dr_add()`. The index of the item after the `sys.dr_add()` is dr_sequence-1.

## Description

`sys.set_dricolor()` allows a program to dynamically change the background and foreground color of a single item in a scrolling program. This is useful to highlight particular items. If you specify the optional `<dfidx>` parameter, only that display field has it's color modified.

## Bugs/Features/Comments

In order to set individual fields in the list item, the list must be part of a panel program.

Setting the color of a single display field on an item requires both client and server version 4.8.1 or higher.

## See Also

[`sys.set_prcolor()`]({{< ref "setprcolor.md" >}})

[`sys.set_dfcolor()`]({{< ref "setdfcolor.md" >}})

Back to Top

## See Also

- [sys.set_prcolor()]({{< ref "setprcolor.md" >}})
- [sys.set_dfcolor()]({{< ref "setdfcolor.md" >}})

