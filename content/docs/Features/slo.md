---
title: "4C Screen Layouts"
weight: 6
draft: false
---

Inherent to the 4C client/server model is the idea of screen
layouts.
Thus, in order to best utilize the 4C client/server model
you need to understand 4C screen layouts and to change your
4C programs to use them.

A 4C screen layout is a set of 4C Screen Programs or 4C sub layouts
arranged within one client main window.
The 4C programs will work as they do now, it is just
the way they are layed out on the screen that is affected.
No matter what the row/col positions are for 4C programs or
fields, each program is considered to have its own rectangle
that can be positioned within or around other 4c Screen Programs.
A sub layout is just a screen layout that is part of another
screen layout as well.
A 4C screen program can be part of more than one screen layout
and it may have a default layout associated with it.
4C screen layouts are compiled and fetched much the same way that
programs and files are.
On the server, 4C layouts are fetched into shared memory.
The server sends a minimal amount of info to the client so it can construct
its own shared memory data structures and non shared data structures.
The client only needs to get layout info from the server
if it does not already have the info in shared mem, or if it is
out of date.
The client maintains a permanent copy of screen layout
info in the clseqf.sxl file which is normally kept in
the HOME_4C/etc directory.
A 4C screen layout or sub layout is arranged based on the type
that you give it.
Currently allowed layout types are:

1. VRowCol Programs or sub layouts are arranged vertically, one on top of the other, much in the way a hdr and detail would be arranged. If there is not enough space to arrange them vertically, they will overlap. All programs or sub layouts in a VRowCol are stretched to the same width.
2. HRowCol Programs or sub layouts are arranged horizontally, one next to the other. If there is not enough space to arrange them without overlap, they will overlap. All programs or sub layouts in a HRowCol are stretched to the same height.
3. Cascade Programs or sub layouts are cascaded. Currently, 4C decides the spacing used for cascading.
4. TabFolder Programs or sub layouts are arranged to overlay each other completely and tab buttons appear at the top for selecting the current program or sub layout. Tab Folders work best with programs that are linked or execed instead of pushed.
5. Single There is only one program or one sub layout. These work well for programs that need to pop up and disappear when complete.
6. Overlay The overlay is the most flexible type of screen layout. Programs and sub layouts overlay each other in a way specified in the sl_ovly definition. They may completely or partially overlay each other at relative x and y positions.

Here, I try to describe the changes needed to make your screen programs
run well under the 4C client/server model.

The first thing you will need to to is to make sure that the
following files exist in your program directory.

```text
sl_hdr
sl_ovly
s_dftype (sdftype.xl)
s_prtype (sprtype.xl)
s_acthdr
s_actdet
s_actitem
s_menubar
s_mbitem
s_menuhdr
s_menuitem
```

For now, you should copy them from the 4C system directory.
If you have already defined menus and action areas for Motif,
then you can rename the following files to s_ instead of m_.

```text
m_acthdr
m_actdet
m_actitem
m_menubar
m_mbitem
m_menuhdr
m_menuitem
```

The Motif files m_def, m_class, and m_dfresource will not be used.

This will allow you to use some pre defined screen layouts, menubars,
and action areas in your programs and layouts.

As a default,
all screen programs will run without change using the
Default or ScrollDefault screen layout.
This will not be adequate in most cases.
A program that is to be part of a screen layout MUST have
a program class of ScreenProg.
Use the Program Development programs to set this.
Once this is set,
you can use this program in your layout definitions.
However, you may first want to make changes to the display fields.
There is a new field that can be set for display fields
that will change the default way that 4C displays them
on the client.
Currently, this field can be set to:

1. dodata Display Only Data. Displays as a text field but will not allow input. Left Justified.
2. ftr Unimplemented so far.
3. hdr Unimplemented so far.
4. inpdata Input Data. Text Field that allows input. Left Justified.
5. label Label Field. No 3D look. Right Justified.
6. scrolldet Part of the detail of a scrolling program. Displays as part of an item of a List. Left Justified.
7. scrollhdr Part of the hdr of a scrolling program. Displays as part of the label above the scrolling area. Left Justified.
8. sellist This displays as a pulldown menu of choices. Currently should only be used with fields that have a choice format. Later, it or another type will allow you to use this on non choice fields. Center justified.
9. title Displays as part of the title in the title area of the main window. The title can change based on which is the current program.
10. trim Label not associated with any other field. Center justified. The only difference between this and label is the justification.
11. ignore This field will be ignored when displayed in a Screen Layout.
12. inplist This works the same as a sellist, except that you may type in the selection field.
13. rblist This gives you a set of radio buttons to choose from. For a choice, field, each of the choices is one radio button. For non choice fields, your program can use sys.dflist_clear() and sys.dflist_add() to set the choices. You will want to set the max items and dpylabel field in the display fields program when using radio buttons.
14. lrblist Same as rblist, except the text appears on the left.
15. chkbox This makes the field a check box control. Instead of using a field literal, you should specify the dpylabel for chkbox fields.
16. lchkbox Same as chkbox, except the dpylabel appears on the left.

There may be others added and if you copy this file from
the system directory to your own program directory
you may add others.

---

## Defining your own 4C Screen Layouts

In order to define your own screen layouts,
run the slh.fm program.
This program is listed on both the source code control menu and on
the system menu.
You can use up to 20 chars in the layout name.
I haven't come to any conclusions on naming conventions yet,
but I have tried using the main program name with an sln extension,
like slh.fm.sl1, slh.fm.sl2 etc.
Most of the fields on the main screen are self explanatory.
If you have not defined any of your own menubars or action areas,
you may want to use Default for the menubar and user2B for the
bottom action area.
You should leave the initial font blank for now.
You may be able to define and use your own fonts in the future
but for now leave this blank.
Once you have a rcd in the sl_hdr rcd, you can add the
details for the layout.
The user1 key will run the slov.fm program.
The label field is used for tabfolders.
For sub layouts, you must specify the sub layout name.
For non sub layouts, you must specify a program
and optionally an asprog name.
There is no reason to specify frame='y'.
The Max width and Height fields are for Overlay type layouts.
Specifying 'y' to either will maximize the program or sub layout to
the full size of the containing layout.
The RPos x and y is also used for Overlay type layouts.
You can specify a number from 0 to 100 that specifies the
relative position within the containing layout.
50, 50 will center the program or sub layout.
0,0 will place it at the top left corner and 100, 100 at the bottom
right corner.
