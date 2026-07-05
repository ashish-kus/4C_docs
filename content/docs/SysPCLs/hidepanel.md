---
title: "sys.hide_panel()"
description: "is obsolete"
weight: 192
draft: false
---

## Purpose

`sys.hide_panel()` is obsolete.

## Usage

```text
ret = sys.hide_panel(<pnlcdef>);
```

## Arguments

- `integer <pnlcdef>` — the cdef of the panel.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Not a screen program, or client version not up to date.

## Where Used

`sys.hide_panel()` can be called from any PCL in a Panel program except the InitPCL, EndPCL, and ExitPCL.

## Example

```text
See the demo.ovly.2, demo.ovly.3, and demo.tabf.3
demo programs for examples.
```

## Description

`sys.hide_panel()` hides the specified panel. Any children of the panel, whether they are dflds or panels are also hidden. In the case of tabfolder or overlay sub panels, making one sub panel invisible does not result in making any sibling sub panels visible.

## Bugs/Features/Comments

`sys.hide_panel()` is obsolete. Use sys.show_panel(...,SF_HIDE) instead.

## See Also

[`sys.show_panel()`]({{< ref "showpanel.md" >}})

Back to Top

## See Also

- [sys.show_panel()]({{< ref "showpanel.md" >}})

