---
title: "sys.choose_color()"
description: "selects a color using the clients color dialog"
weight: 33
draft: false
---

## Purpose

`sys.choose_color()` selects a color using the clients color dialog.

## Usage

```text
rgbval = sys.choose_color(<initrgb>);
```

## Arguments

- `<initrgb>` — an alpha of the form rrr:ggg:bbb that is the default
color.

## Returns

- `<rgbval>` — An alpha of the form rrr:ggg:bbb.
If the user cancels, then "" is returned.

## Where Used

`sys.choose_color()` can be called from anywhere.

## Description

`sys.choose_color()` allows the user to select a color. You may store this color and use it in subsequent calls to

[`sys.set_prcolor()`]({{< ref "setprcolor.md" >}})

,

[`sys.set_dfcolor()`]({{< ref "setdfcolor.md" >}})

, and

[`sys.set_dricolor()`]({{< ref "setdricolor.md" >}})

## See Also

[`sys.set_prcolor()`]({{< ref "setprcolor.md" >}})

[`sys.set_dfcolor()`]({{< ref "setdfcolor.md" >}})

[`sys.set_dricolor()`]({{< ref "setdricolor.md" >}})

Back to Top

## See Also

- [sys.set_prcolor()]({{< ref "setprcolor.md" >}})
- [sys.set_dfcolor()]({{< ref "setdfcolor.md" >}})
- [sys.set_dricolor()]({{< ref "setdricolor.md" >}})

