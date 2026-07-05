---
title: "sys.sl_settab()"
description: "- Dynamically change TabFolder"
weight: 320
draft: false
---

## Purpose

`sys.sl_settab()` - Dynamically change TabFolders

## Usage

```text
ret = sys.sl_settab(<layoutname>,<itemname>,<sltype>[,<label>]);
```

## Arguments

- `alpha` — `<layoutname>` - The name of the layout that has that TabFolder.
This is the name of the top level layout, not a sublayout.
If you specify "" as the layout name, then the current layout
is assumed.
- `alpha` — `<itemname>` - This is the label specified in the specs for
this TabFolder item.
Use the same itemname even if you change the label on the tab.
- `integer` — `<slflags>` -
slflags can be any combination of
SL_HIDE,SL_SHOW,SL_DISABLE,SL_ENABLE,SL_SHOW,SL_LABEL
- `alpha` — `<label>` -
Optional new label to use for the TabFolder item.

## Returns

- `0` — OK
- `-1` — Error.

## Where Used

`sys.sl_settab()` can be called anytime after a screen layout has been displayed. Don't call it from the InitPCL of the first program that starts the layout.

## Example

```text
The sys.prog.mstr bootstrap program dynamically changes
the DpyFields item of the TabFolder in the sys.prog.mstr.sl1
layout.
Notice that the sys.df.maint1 program exits from the the InitPCL
if the program is either an Update or a TreeView program.
```

## Description

Use `sys.sl_settab()` to dynamically change the appearance of TabFolder items in a screen layout. If you specify SL_HIDE, then the tab item will be invisible until some other call specifies SL_SHOW. If you specify SL_DISABLE, then the Tab will be grayed out and the user will not be able to select that tab until another call specifies SL_ENABLE. You can change the text on the tab by specifying SL_LABEL, `<label>`. The text should not be any longer than the original label or it may be truncated.

It is posssible to hide or disable a tab that is currently in use. It is also possible for the application to start a program that that may be hidden because the tab is hidden. It is the applications responsibility to deal with these possibilities.

## Bugs/Features/Comments

There is currently no way to distinguish between items on multiple TabFolders in the same layout that use the same label.

## See Also

[`sys.set_winlabel()`]({{< ref "setwinlabel.md" >}})

Back to Top

## See Also

- [sys.set_winlabel()]({{< ref "setwinlabel.md" >}})

