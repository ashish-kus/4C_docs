---
title: "sys.show_fkey()"
description: "is used to show, hide, enable, or disable items associated with a function key"
weight: 316
draft: false
---

## Purpose

`sys.show_fkey()` is used to show, hide, enable, or disable items associated with a function key.

## Usage

```text
ret = sys.show_fkey(<fkeyname>,<showflags>);
```

## Arguments

- `alpha <fkeyname>` — The name of the function key.
- `integer <showflags>` — Combinations of SF_SHOW, SF_HIDE, SF_ENABLE,
SF_DISABLE

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Invalid `<fkeyname>`

## Where Used

`sys.show_fkey()` can be called from any PCL in a Screen program except the InitPCL, EndPCL, and ExitPCL.

## Example

```text
See the demo.hrc.2 demo program for an example.
```

## Description

`sys.show_fkey()` is used to show, hide, enable, or disable items dependant on a single function key for the current program only. Items that are dependant on function keys include action area buttons and menu buttons. At the same time, `sys.show_fkey()` either enables or disables processing of the function key. When a function key is either hidden or disabled, processing of the function key is disabled. When the processing of the function key is disabled, if the user presses the specified key, 4C will beep and ignore the function key. The way `sys.show_fkey()` works depends on which showflags are specifed.

SF_SHOW - Make items dependant on the specified function key visible.

SF_HIDE - Make items dependant on the specified function key invisible, and disables processing of the function key.

SF_ENABLE - Make items dependant on the specified function key enabled.

SF_DISABLE - Disables items dependant on the specified function key, and disables processing of the function key.

Requirements

`sys.show_fkey()` Requires version 4.4 or higher 4C Server and 4C Client

## Bugs/Features/Comments

Even when SF_HIDE is specified, menu buttons will still appear, but in the disabled state.

## See Also

[`sys.show_panel()`]({{< ref "showpanel.md" >}})

[`sys.show_dfield()`]({{< ref "showdfield.md" >}})

Back to Top

## See Also

- [sys.show_panel()]({{< ref "showpanel.md" >}})
- [sys.show_dfield()]({{< ref "showdfield.md" >}})

