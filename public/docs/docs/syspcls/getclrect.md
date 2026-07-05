# sys.get_clrect()

## Purpose

`sys.get_clrect()` returns the dimensions a single client control in system variables

## Usage

```text
ret = sys.get_clrect(<controlid>);
```

## Arguments

alpha `<controlid>` - The name or type of the client control that you want to get the dimensions of.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Error

## Where Used

`sys.get_clrect()` can be called from anywhere as long as there is a current 4C window currently open on the client. Typically it would be used in order to determine where you want to display another layout, a messagebox, or a [`sys.get_answer()`]({{< ref "getanswer.md" >}}) dialog.

## Example

```text
The 4cSys program sys.pr.srch.1 uses sys.get_clrect() in the execdet() pcl to determine
the upper left corner of the current layout and then it uses that position to set the
position for the new program it is starting.
```

## Description

`sys.get_clrect()` returns the dimensions a single client control in system variables. The dimensions used are the same as those used by the client. For a win32 client, the dimenions are in pixels, while in a MacOS X Client, the dimensions are in points. The system variables that get the dimenasions are sys.rect_left, sys.rect_right, sys.rect_top, and sys.rect_bottom. Allowable values for `<controlid>` are:

"Screen" - The dimensions of the full screen where the current 4C window is displayed.

"WorkArea" - The dimensions of the WorkArea where the current 4C window is displayed.

"Layout" - The dimensions of the currently running layout.

"Prog" or "Program" - The dimensions of the current program.

"Focus" - The dimensions of the 4C control that currently has the focus.

"DField" - The dimensions of the current 4C display field.

"Panel" - The dimensions of the panel containing the the 4C control that currently has the focus.

"DrList" - The dimensions of the scrolling list in the current 4C program.

"DrLine" - The dimensions of the current line in the scrolling list of the current 4C program

"TreeView" - The dimensions of TreeView in the current 4C program.

"TVItem" - The dimensions of the currently selected TVItem

`<panel>` - The dimensions of the named panel in the current program.

`<DField>` - The dimensions of the named display field in the current program.

Requirements

`sys.get_clrect()` requires version 5.2 or later for both the 4C server and the 4C client.

## Bugs/Features/Comments

Bugs

## See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})


