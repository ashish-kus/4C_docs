---
title: "4C Dynamic Positioning"
weight: 1
draft: false
---

Since version 5.0.4-01, it has been possible to dynamically position a layout
on the screen at run time.
Version 5.2.9-01 adds the capability to dynamically position the sys.get_answer()
dialog as well as the sys.message() message box.
The position of a layout can only be set before it is initially displayed on the
screen.
Dynamic positioning is specified by using two strings.
One defines the horizontal position and one defines the vertical position of the
layout to be displayed.

You can define the the position of the layout in relation to any of the following:

- Screen, WorkArea - Both of these refer to the entire usable portion of the screen.
- Layout - The current active layout
- Program, Prog - The current program in the current active layout
- Focus - This is the control that currently has the focus. It may be a TreeView, a list, an input field, or a cmd btn.
- DField - This is the current input field.
- Panel - Current panel that the focus control is in.
- DrList - The list or listview control of the current program.
- DrLine - The current line in the list
- TreeView - The treeview control.
- TVItem - The current item in the treeview control.
- DField by name - A display field in the current program referenced by name. It does not need to have the focus.
- Panel by name - A panel in the current program referenced by name. It does not need to contain the control that currently has focus.

There are several places that you can set the dynamic positioning of a layout.
In order of precedence from highest to lowest they are

- As the last two arguments of any sys.run_layout() call
- As the last two arguments of any sys.push_prog(), sys.link_prog(), sys.exec_prog(), sys.link_group(), sys.get_answer(), or sys.message() call.
- By setting the local system variables sys.xpos_str and sys.ypos_str.
- By setting the dynamic position fields in a layout definition.

The strings are specified using the follwing style

```text
XPos%`<n>`=`<type>`%`<n>`[`<ofst>`]
and
Ypos%`<n>`=`<type>`%`<n>`
```

Where `<type>` is any of the previously mentioned types and `<n>` is an integer between
0 and 100 inclusive.
The optional `<ofst>` is signed integer.

Some examples should make this clear

- XPos%50=Layout%50 - Centers the new layout horizontally on the current layout
- YPos%0=DField%100+10 - This positions the layout vertically 10pixels below the bottom of the current display field.
- XPos%0=sys.pr_name%100 - If there is a display field in the current program names sys.pr_name, then the left side of the layout will be positioned at the far right of the sys.pr_name display field.

Misc notes

- When using dynamic positioning, it is not necessary to set both the XPos and YPos position. When one is not set, it will use the a lower precedence setting, if one exist, or the default from the layout definition.
- It is not necessary to clear sys.xpos_str and sys.ypos_str if you use them. They will be cleared automaticlly.
- You shouldn't normally need to use the sys.xpos_str and sys.ypos_str except in fairly rare circumstances. The 4cSys program sys.runprog1 is an example that does use them so that it can isolate the setting of the dynamice positions to one place instead of having them in each of the different PCLs that call sys.link_prog(), sys.push_prog(), etc.
- If there is an error in the dynamic position string, the string is ignored and the layout is positioned where it would be if no dynamic positioning were used.
- if the dynamic positioning strings position the layout partially or fully off the screen, the 4C client will adjust the positioning so the layout is fully visible.
- When used with sys.exec_prog(), the current layout may not be the layout that the program calling sys.exec_prog() is in. This is especially true if the window the calling program is in closes due the the execing program being closed. If this is an issue, then you can first use sys.get_clrect() to determine the position of the current layout and then position the new layout based on those coordinates. See the sys.pr.srch program for an example of this.

Examples in 4cSys

- The calc,sl, slh.fm.sl1, and sys.fh.maint.sl1 layouts all define a dynamic position in the layout definition.
- The sys.pr.srch program passes positioning strings when it execs the sys.pr.srchd program. This makes the detailed program always be positioned as close to the position of the sys.pr.srch program.
