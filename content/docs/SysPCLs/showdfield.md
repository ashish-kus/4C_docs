---
title: "sys.show_dfield()"
description: "is used to show, hide, enable, or disable a display field"
weight: 315
draft: false
---

## Purpose

`sys.show_dfield()` is used to show, hide, enable, or disable a display field.

## Usage

```text
ret = sys.show_dfield(<dflabel>,<showflags>);
```

## Arguments

- `integer <dflabel>` — unique display field id.
- `integer <showflags>` — Combinations of SF_SHOW, SF_HIDE, SF_ENABLE,
SF_DISABLE, SF_IGNORE, SF_NOIGNORE, SF_NOSHOWPARENT

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Not a screen program, invalid dflabel, or client version not up to date.

## Where Used

`sys.show_dfield()` can be called from any PCL in a Screen program except the InitPCL, EndPCL, and ExitPCL.

## Example

```text
See the demo.hrc.2 demo program for examples.
```

## Description

`sys.show_dfield()` is used to show, hide, enable, or disable a single display field. The way `sys.show_dfield()` works depends on which showflags are specifed.

SF_SHOW - Make the specified display field visible. Unless SF_NOSHOWPARENT is specified, then all containing panels will be made visible as well.

SF_HIDE - Hide the specified display field.

SF_ENABLE - Enable the specified display field as well as all containing panels.

SF_DISABLE - Disable the display field.

SF_IGNORE - When specified with either SF_DISABLE or SF_HIDE, the display field will be ignored during the display field processing loop. Since this is the default behaviour for both SF_DISABLE and SF_HIDE. it is not necessary to specify SF_IGNORE.

SF_NOIGNORE - When specified with either SF_DISABLE or SF_HIDE, the display field will be processed normally during the display field processing loop.

SF_NOSHOWPARENT - Don't immediately show containing panels. This is useful when the dfield is embedded within a Panel tabfolder and you do not want to immediately show the tab.

## Bugs/Features/Comments

If `sys.show_dfield()` is called in the SFldPCL for a display field, it may be necessary to specify SF_NOIGNORE with SF_DISABLE or SF_HIDE. Otherwise, the same SFldPCL cannot be used to enable/show the DField because it won't ever be executed until the dfield has been enabled/shown.

## See Also

[`sys.show_panel()`]({{< ref "showpanel.md" >}})

[`sys.show_fkey()`]({{< ref "showfkey.md" >}})

Back to Top

## See Also

- [sys.show_panel()]({{< ref "showpanel.md" >}})
- [sys.show_fkey()]({{< ref "showfkey.md" >}})

