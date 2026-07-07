---
title: "Panel Screen Painter"
weight: 6
draft: false
---

## 29 October 2003

The 4C Panel Screen Painter is an interactive
WYSIWYG editor.
It allows you to create 4C Panels in a more
interactive and intuitive way than using the
4C bootstrap programs.
It speeds up the GUI development.
It consists of a client side program,
[wpnlsp,](https://www.4csoftware.com/docs/Features/Clients/wpnlsp.html)
and
a server side program, 4cpnlsp.
In order to be able to use the Panel Screen Painter,
you need to understand how 4C Panels work.
The
[4C Panels]({{< ref "panels.md" >}})
doc describes 4C Panels in detail.

The rest of this document describes the 4C Panel Screen Painter in
detail.
It is divided into the following sections:
[Overview]({{< ref "panelsp.md" >}})[PanelTV View]({{< ref "panelsp.md" >}})[Canvas View]({{< ref "panelsp.md" >}})[DField View]({{< ref "panelsp.md" >}})[Selection]({{< ref "panelsp.md" >}})[Undo/Redo]({{< ref "panelsp.md" >}})[Commands]({{< ref "panelsp.md" >}})[Root Panel]({{< ref "panelsp.md" >}})[Creating New Panels]({{< ref "panelsp.md" >}})[Inserting DFields]({{< ref "panelsp.md" >}})[Deleting Panels]({{< ref "panelsp.md" >}})[Deleting DFields]({{< ref "panelsp.md" >}})[Drag And Drop]({{< ref "panelsp.md" >}})[Miscellaneous Dialog Windows]({{< ref "panelsp.md" >}})[DField Properties]({{< ref "panelsp.md" >}})[Panel Properties]({{< ref "panelsp.md" >}})[Keyboard Shortcuts]({{< ref "panelsp.md" >}})[Panel Type Specifics]({{< ref "panelsp.md" >}})[Notes]({{< ref "panelsp.md" >}})[Unimplemented Features]({{< ref "panelsp.md" >}})

---

## Startup

You can start wpnlsp either from inside of 4C where
you will be automatically connected and the correct app
and program will be selected and displayed, or you
can start it manually and go through the connect,
app select, and program select by hand.

Before you can start editing anything you must connect to
a 4csrvr and select an application.
The server you are connected to and the current application
are displayed in the title bar of wpnlsp.
If an application has been selected then you can display
a filtered list of Panel programs in that application
by entering some text in the filter-by area and pressing return
or clicking refresh.

When there are programs listed in the program list,
you can open one for editing by double clicking on it,
or by selecting it and pressing return.
You can open multiple programs for editing at a time.
Each will display as a different tab in the edit area,
and each maintains it's own undo/redo list.
Some info will display in the StatusArea of the main window.
Of special interest is whether the program is in read only
mode or not.
Programs that use source code control and are not currently
edited can only be viewed in read only mode.
Also, only one instance of wpnlsp can access a program
in update mode.
You can also see in the StatusArea whether changes have been
made to the program since the last time you saved it.

The edit area consists of a TabFolder and a Canvas.

The TabFolder allows you to view one of:

- PanelTV - A TreeView depiction of the Panels and DFields. Each node of the TreeView corresponds to either a single Panel or a single DField.
- DFieldsTab - Display Fields of the program subdivided into: InUseDFieldsList UnusedDFieldsList AllDFieldsList

The Canvas allows you to see and modify your GUI in a WYSIWYG way.

---

## PanelTV View

The PanelTV gives a TreeView view of your Panels
and DFields.
You can select items in the PanelTV as well as perform actions on
them.

Selecting Panels and DFields in the PanelTV selects the same
Panels and DFields in the Canvas.

Changes made in the PanelTV are shown immediately in the Canvas
as well as in the PanelTV.

---

## Canvas View

The Canvas view is a close,
although not exact copy of the way your GUI will look.
The GUI is stretched out and there is more area around borders to
allow highlighting selected items.
This extra spacing also allows
you to see where items may be inserted during dragging and when
creating new Panels.

Selecting Panels and DFields in the Canvas selects the same
Panels and DFields in the PanelTV.

Making changes in the Canvas view updates the PanelTV view also.

If the Canvas is too crowded to see things clearly,
you can Zoom to a single Panel.

---

## DField View

The DField view allows you to view your Display Fields.
You can view one of:

- InUse DFields - These DFields are used in a Panel.
- Unused DFields - These DFields are not used by any Panel yet.
- All DFields - All DFields defined in your program.

Selection in any of the lists in the DField tab work independently
of selections in any other view.

---

## Selection

Selection here refers only to the PanelTV and the Canvas.
When an item is selected in the PanelTV it is also selected in the
Canvas and vice versa.
At any one time you can have either 1 Panel selected or
multiple DFields.
You cannot select more than one Panel at a time and you cannot
select Panels and DFields together.
The currently selected items are highlighted in the PanelTV and
in the Canvas.
In addition to selected items, there is also always
one current item, called the FocusItem.
The FocusItem does not need to be selected, but if it is
you can tell it is the FocusItem by the darker rectangle outside
of the highlight rectangle.
Some ways of selecting and deselecting items are:

- Clicking the left mouse button with neither the `<Ctrl>` or `<Shift>` keys pressed over either a DField item or a Panel item in either the PanelTV or the Canvas. If the item is unselected, it will become selected and focused and all other items will become unselected. If the item is already selected, it will remain selected, and it will become the FocusItem. Other selected DFields will remain selected.
- Clicking the left mouse button with the `<Ctrl>` key pressed over a DField item in either the PanelTV or the Canvas. If the DField item is currently selected, it will become unselected. If the DField item is currently unselected, it will become selected. The DField item will become the FocusItem. Any other selected DFields will remain selected. If there is a selected Panel item, it will become unselected.
- Clicking the left mouse button with the `<Shift>` key pressed over a DField item in the PanelTV. If the FocusItem is a DField, then all DField items between the FocusItem and the DField item under the mouse cursor will be selected, including any hidden DFields. The DField item under the cursor will become the FocusItem.
- When a Panel with DField children is selected, you can select all the DField children from the context menu or from the Edit menu. The Panel will become unselected, all DField children will become selected, and the first DField child will become the FocusItem.
- Use the `<Shift>` and arrow keys in the Canvas to change the selected item. `<Shift>`+`<Left>` and `<Shift>`+`<Right>` switches selection between siblings. `<Shift>`+`<Up>` changes the selection to the parent of the FocusItem. `<Shift>`+`<Down>` changes the selection to the first child of the FocusItem.

---

## Undo/Redo

Any action that changes your GUI in any way can be undone and redone.
If an action results in multiple changes,
then undoing the action reverses all of the changes together.
Redoing the action will redo all the changes that were part of the original
action.

Actions can be redone only if no new actions are performed after the
undo.

Currently, a maximum of up to 100 actions are saved on the undo list
for each edited program.
If this turns out not to be enough, it can be changed.

There are accelerator keys to allow quick undo and redo.
Look at the Edit menu to see what these keys are.

---

## Commands

Some of the things you can do to an open program are:

- Create a new Panel
- Save Changes to Current Program. If there are unsaved changes, then the program is written back to the server.
- Save changes to all edited programs.
- Write out current program. The program is written to the server whether or not there are unsaved changes.
- Write all programs back to server.
- Close current program. If changes have been made, you will be prompted to save them.
- Close all programs. If changes have been made to any open program, you will be prompted to save them.
- Test the GUI.
- Redraw the Canvas. Hopefully not necessary, but if it doesn't look quite right use this.
- SelectAll
- Delete selected Panel or selected DFields.
- Insert a new Panel.
- Insert the selected UnusedDFields.
- Zoom in or out of the selected Panel.
- Modify Panel Properties
- Modify DField Properties
- Undo last change
- Redo the last undone change.
- Exit the PanelSP. If there are unsaved changes, you will be prompted to save them.

You can access any of these commands from one of the menubar menus,
or from the context menu.
If a command allows an accelerator key, this will be shown in
the menu as well.

---

## Root Panel

All Panel programs need to have a Root Panel.
When you open a program without a Root Panel in PanelSP,
the Canvas will not be displayed.
Before you can create other Panels or add DFields to any
Panels, you will need to define the Root Panel.
There will be a Root Panel in the PanelTV.
Double click this and define the Root Panel properties.

---

## Creating New Panels

There are 2 ways to create a new Panel.

- Select NewPanel from the context menu, move the the mouse to the area of the canvas you want to insert the new Panel and click the left mouse button. Notice that the shape of the cursor indicates whether you can insert a new Panel beneath the mouse cursor or not. With some Panel types you will see a drop rectangle (drawn in green) showing where the new Panel will be inserted. The true size of the Panel is not shown by the drop rectangle. Regardless of whether you can insert a new panel at the mouse cursor location or not, a black rectangle will be drawn showing the outline of the innermost Panel below the mouse cursor. Additional info on where you are inserting the new Panel shows up in the StatusArea. This method acts like the drag and drop method of moving Panels and nodes.
- You can also select a Panel that allows Panel children or siblings and then select Insert==>Panel from the context menu. You will be prompted whether you are inserting a child or sibling Panel and whether you want this to be the first or last child or the prev or next sibling.

Both methods of inserting new Panels will take you to the Panel Properties
to let you specify the details of the new Panel.

---

## Inserting DFields

There are two ways of inserting DFields onto a Panel.

- The easiest way is probably to select one or more DFields from the PanelTV/UnusedDField branch and to drag them to the Canvas. Initiate the drag by holding down the left mouse button above one of the selected DFields and then move the mouse cursor to where you want to drop the DFields. You will see a visual indication of whether dropping the DFields below the mouse cursor is allowed or not as well as some messages in the StatusArea.
- The other way is to first select one or more DFields from the UnusedDFieldsList and then select either a Panel you want to add the DFields to, or a DField that will be a sibling of the new DFields. Next, select Insert==>`<n>`DFields... from the context menu. You will be prompted to specify the relative location of the insert.

Only DFields that are already defined to 4C can be added to a Panel.

---

## Deleting Panels

You can delete a Panel by selecting it and then selecting Delete from
either the Edit menu or the context menu.

If the deleted Panel has any children,
then the deleted Panel will show up in the Deleted Panels branch of the
PanelTV.

If the deleted Panel has no children, then it will not show up in the PanelTV.
The only way to get it back is to undo the delete.

Not all Panels can be deleted.
Specifically, you cannot delete the Root or Title Panel.
Neither can you delete the UnusedPanels or UnusedDFields branch
from the PanelTV.

---

## Deleting DFields

You can delete DFields from a Panel by selecting the ones you want to
delete and then selecting Delete from either the Edit or Context menu.

DFields that are deleted are not deleted from 4C.
They are just removed from their Panel.
They will show up in the PanelTV UnusedDFields branch and
they will also show up in the UnusedDFieldsList.

---

## Drag And Drop

The PanelSP supports dragging of Panels and of DFields
to new locations.

To drag a Panel, select it and then initiate the drag by pressing the left
mouse button while the mouse cursor is over the selected Panel.
You can initiate the drag from either the PanelTV or the Canvas.
With the left mouse button held down, move the mouse cursor to where
you want the Panel dropped and then release the left mouse button.

You will see visual indication of whether a drop is allowed or not.
The indications include a drop rectangle, a crosshair mouse cursor,
and messages in the StatusArea.

Regardless of whether you drop a panel at the mouse cursor
location or not, a black rectangle will be drawn showing the outline
of the innermost Panel below the mouse cursor.

If a drop is not allowed, the mouse cursor and the StatusArea
will reflect this.
When dragging a Panel, all SubPanels and DFields
are moved with the Panel.

To drag DFields to a new location, select them as usual,
initiate the drag as usual and then drop them in their
new location.

You will see the same visual cues when dragging DFields that
you see when dragging a Panel.

It is possible to drag DFields from different Panels and drop
them into the same Panel in one operation.

There are several ways to cancel a drag operation.
The easiest are:

- Release the left mouse button over an area that does not accept the drop.
- Press the escape key while dragging

Note that not all Panel types show the drop rectangle when a drop is
allowed.
You can still tell that a drop is allowed by the shape of the mouse
cursor and by the StatusArea messages.

---

## Miscellaneous Dialog Windows

When the PanelSP needs mor information, it
will pop up a Dialog Window prompting for information.
All these Dialog Windows work the same way regarding traversal
between items and ending the Dialog.
In Particular:

- Pressing `<return>` accepts the current field and moves to the next field.
- Pressing `<tab>` will move ahead to a logical TabStop.
- Pressing the `<cancel>` key will work as if you pressed the `<Cancel>` button.
- Pressing the `<accept>` key will work as if you pressed the `<OK>` button.
- Pressing `<return>` on the last input field will traverse to the first input field.
- When input is not allowed on a certain item, the item will be disabled.

---

## DField Properties

The DField Properties are pretty much the same as what
shows up in display field definition in the 4C Bootstraps.
You can access DField Properties by left double clicking
on a DField item on either the PanelTV or the Canvas.

---

## Panel Properties

The Panel properties correspond to the attributes that you can define
in the sys.pnl_hdr and sys.pnl_det file using the 4C bootstraps.
You can access Panel Properties by left double clicking
on a Panel item on either the PanelTV or the Canvas.

---

## Keyboard Shortcuts

There are several standard keyboard combinations used by
most panels and dfields.
Not all panel types or dfields support all of these
keyboard shortcuts.
They are:

- `<Ctrl>`+`<LeftArrow>` - Move selected panel or dfields to the left
- `<Ctrl>`+`<RightArrow>` - Move selected panel or dfields to the right
- `<Ctrl>`+`<UpArrow>` - Move selected panel or dfields up
- `<Ctrl>`+`<DownArrow>` - Move selected panel or dfields down
- `<Shift>`+`<LeftArrow>` - Select the prev sibling of currently selected panel or dfield
- `<Shift>`+`<RightArrow>` - Select the next sibling of currently selected panel or dfield
- `<Shift>`+`<UpArrow>` - Select the parent of the currently selected panel or dfield
- `<Shift>`+`<DownArrow>` - Select first child of currently selected panel
- `<Ctrl>`+`<Shift>`+`<LeftArrow>` - Increase the ncols attr of all selected dfields
- `<Ctrl>`+`<Shift>`+`<RightArrow>` - Decrease the ncols attr of all selected dfields
- `<Ctrl>`+`<Shift>`+`<UpArrow>` - Decrease the nrows attr of all selected dfields
- `<Ctrl>`+`<Shift>`+`<DownArrow>` - Increase the nrows attr of all selected dfields

---

## Panel Type Specifics

Some behavior in the PanelSP is specific to certain panel types.
Some of these are temporary peculiarities that will be fixed in the future.
Others are that way because they need to be.
Those behaviors are described here.

- HRowCol The HRowCol allows you to move children of the HRowCol using either `<Ctrl>`+`<LeftArrow>` or `<Ctrl>`+`<RightArrow>`.
- HSplitPane The HSplitPane allows you to move children of the HSplitPane using either `<Ctrl>`+`<LeftArrow>` or `<Ctrl>`+`<RightArrow>`. The Splitter in the HSplitPane is drawn differently on the Canvas than it is in the real GUI.
- VRowCol The VRowCol allows you to move children of the VRowCol using either `<Ctrl>`+UpArrow> or `<Ctrl>`+`<DownArrow>`.
- VSplitPane The VSplitPane allows you to move children of the VSplitPane using either `<Ctrl>`+UpArrow> or `<Ctrl>`+`<DownArrow>`. The Splitter in the VSplitPane is drawn differently on the Canvas than it is in the real GUI.
- Single
- TabFolder When working in the Canvas area with TabFolders, only one is visible at a time. You can use `<Shift>`+`<LeftArrow>` or `<Shift>`+`<RightArrow>` to move among the TabFolder children raising each one in turn.. Alternately, you can click on a TabFolder child in the PanelTV and it will be raised in Canvas area. The TabFolder allows you to move children of the TabFolder using either `<Ctrl>`+`<LeftArrow>` or `<Ctrl>`+`<RightArrow>`. When the TabFolder is a target of a drop, the drop rectangle is not displayed. When you drop onto a TabFolder, the dropped item is always positioned as the first tab. You can use `<Shift>`+`<RightArrow>` to move it.
- Overlay When working in the Canvas area with Overlays, only one is visible at a time. You can use `<Shift>`+`<LeftArrow>` or `<Shift>`+`<RightArrow>` to move among the Overlay children raising each one in turn.. Alternately, you can click on an Overlay child in the PanelTV and it will be raised in Canvas area. The Overlay allows you to move children of the Overlay using either `<Ctrl>`+`<LeftArrow>` or `<Ctrl>`+`<RightArrow>`. When the Overlay is a target of a drop, the drop rectangle is not displayed. When you drop onto an Overlay, the dropped item is always positioned as the first child of the Overlay. You can use `<Shift>`+`<RightArrow>` to move it.
- ListView The display of the ListView in the Canvas uses an HRrowCol to arrange the individualo fields of the ListView. Each individual field is made up of a VRowCol (TopLabel and DField). The TestGUI uses the same format temporarily.
- Form
- Grid
- List
- Title

---

## Notes

Changes made to a 4C program using the PanelSP are made locally
until you explicitly save your changes.
Because of this, you need to be careful about switching between
the PanelSP and the 4C bootstrap programs for making changes.
The main place you need to be careful is in display fields.
Some things that are easier using the bootstraps are:

- Modifying a single attribute on multiple DFields.
- Adding more display fields.
- Deleting display fields from the program.
- Reordering display fields.

If you need to switch between the PanelSP and the 4C bootstraps,
you should:

- Save your changes in the PanelSP
- Close the program in the PanelSP
- Use the 4C Bootstraps to start up the DField bootstrap program. If it is currently running, you need to close and restart it.
- Make the changes in the bootstraps
- Close the 4C DField program.
- Open the program in the PanelSP.

---

## Currently Unimplemented Features

Some features that currently are not implemented are:

- Even though you can drag from the PanelTV, you cannot drop onto the PanelTV yet.
- Dragging from DFields/Unused is not implemented yet. However, you can drag from the Unused DField branch of the PanelTV.
- There is no way to recover from a lost network connection. So remember to occasionally save your work.
- The bootstraps do not prevent you from making changes to a program that may conflict with changes you are making in the PanelSP.
- Not all Panel types show the drop rectangle when dragging nodes or inserting new Panels.
- There is no way to Copy/Paste Panels between different programs.
