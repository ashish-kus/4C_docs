---
title: "sys.set_dfcolor()"
description: "allows a program to dynamically change th"
weight: 280
draft: false
---

## Purpose

`sys.set_dfcolor()` allows a program to dynamically change the background and foreground color of a single ScreenProg display field.

## Usage

```text
ret = sys.set_dfcolor(<dflabel>,<fgrgbval>,<bgrgbval>);
```

## Arguments

- `<dflabel>` — integer var, should be the DFLABEL for the display field.
- `<fgrgbval>` — alpha var in "rrr:ggg:bbb" format
If `<fgrgbval>` is "", it will not be changed.
If it is "Default", it will change to the display fields
default foreground.
- `<bgrgbval>` — alpha var in "rrr:ggg:bbb" format
If `<bgrgbval>` is "", it will not be changed.
If it is "Default", it will change to the display fields
default background.

## Returns

The only value returned currently is 0.

## Where Used

`sys.set_dfcolor()` can be called from anywhere but most likely will be called from the Init PCL.

## Description

`sys.set_dfcolor()` allows a program to dynamically change the background and foreground color of a single display field. This can be useful if it cannot be known at program compile time.

## Bugs/Features/Comments

`sys.set_dfcolor()` is not implemented for scrollhdr or scrolldet fields.

## See Also

[`sys.set_prcolor()`]({{< ref "setprcolor.md" >}})

[`sys.set_dricolor()`]({{< ref "setdricolor.md" >}})

Back to Top

## See Also

- [sys.set_prcolor()]({{< ref "setprcolor.md" >}})
- [sys.set_dricolor()]({{< ref "setdricolor.md" >}})

