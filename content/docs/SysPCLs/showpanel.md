---
title: "sys.show_panel()"
description: "is used to show, hide, enable, or disable a panel"
weight: 317
draft: false
---

## Purpose

`sys.show_panel()` is used to show, hide, enable, or disable a panel.

## Usage

```text
ret = sys.show_panel(<pnlcdef>,<showflags>);
```

## Arguments

- `integer <pnlcdef>` — the cdef of the panel.
- `integer <showflags>` — Combinations of SF_SHOW, SF_HIDE, SF_ENABLE,
SF_DISABLE, SF_IGNORE, SF_NOIGNORE, SF_NOSHOWPARENT

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Not a screen program, invalid pnlcdef, or client version not up to date.

## Where Used

`sys.show_panel()` can be called from any PCL in a Panel program except the InitPCL, EndPCL, and ExitPCL.

## Example

```text
See the demo.hrc.2, demo.ovly.2, demo.ovly.3, and demo.tabf.3
demo programs for examples.
An example of using sys.show_panel() with the SF_NOSHOWPARENT flag
is in the bootstrap program sys.df.fm.pnl.
```

## Description

`sys.show_panel()` is used to show, hide, enable, or disable a panel. The way `sys.show_panel()` works depends on which showflags are specifed.

SF_SHOW - Make the specified panel visible. Unless SF_NOSHOWPARENT is specified, then all containing panels will be made visible as well. Any child panel or display field that was implicitly hidden due to the specified panel being hidden will also be made visible. Any subpanel or dfield that was explicitly hidden will not be made visible.

SF_HIDE - Hide the specified panel. Any subpanels of the panel as well as all contained dfields will be implicitly hidden. Hiding a child of a TabFolder will remove the corresponding label from the TabFolder. The label will be added back to the TabFolder when the child panel is unhidden programmatically.

SF_ENABLE - Enable the specified panel as well as all containing panels. Any child panel or display field that was implicitly disabled due to the specified panel being disabled will also be enabled. Any subpanel or dfield that was explicitly disabled will not be enabled.

SF_DISABLE - Disable the panel. Any subpanels of the panel as well as all contained dfields will be implicitly disabled. Disabling a child of a TabFolder will disable the label for that panel and you will not be able to raise that panel until it has been enabled.

SF_IGNORE - When specified with either SF_DISABLE or SF_HIDE, all contained dfields will be ignored during the display field processing loop. Since this is the default behaviour for both SF_DISABLE and SF_HIDE, it is not necessary to specify SF_IGNORE.

SF_NOIGNORE - When specified with either SF_DISABLE or SF_HIDE, contained dfields will be processed normally during the display field processing loop.

SF_NOSHOWPARENT - Don't immediately show containing panels. This is useful when the Panel is embedded within a Panel tabfolder and you do not want to immediately show the tab.

In the case of tabfolder or overlay sub panels, making one sub panel visible will result in making any sibling sub panels invisible.

Hiding a panel will not automatically make any other panels visible.

## See Also

[`sys.show_dfield()`]({{< ref "showdfield.md" >}})

[`sys.show_fkey()`]({{< ref "showfkey.md" >}})

Back to Top

## See Also

- [sys.show_dfield()]({{< ref "showdfield.md" >}})
- [sys.show_fkey()]({{< ref "showfkey.md" >}})

