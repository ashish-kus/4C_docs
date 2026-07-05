# Screen Panels Intro

## 29 September 2003

Starting with version 3.7.4, 4C will allow you to divide
a screen program into panels.
Both the server and client need to be at or above this release level.
There are no known issues of connecting the newer client
to an older server,
however, even though older clients can connect to newer
servers they will crash if they try to run any panel programs.
Panels do not affect the logical processing of 4C, although
there are some places this could change.
(See the Unresolved Issues section.)
4C will still process each display field individually and in the
order the fields are defined in sys.dpy_field.

A panel is an area of the screen that can contain
other panels (subpanels) or display fields.
Panels can have titles and margins.
Panels manage the layout of their children, whether they are
other panels or display fields.
One panel can not contain both subpanels and display fields.
Panels work very much like screen layouts and have similar
types.
If you understand 4C Screen Layouts you will have no trouble
understanding 4C Screen Panels.
The main difference is that Screen Layouts
manage the layout of multiple 4C screen programs, while panels
manage the layout of subpanels and of display fields within
a single 4C program.

Some advantages of using panels in screen programs are:

- You can create better looking GUIs.
- Adding fields to the GUI later will be easier.
- You have more control over the way the GUI acts when resized.
- There is a screen painter that works with panels.

---

## Panel Types

The types of panels that 4C allows and how they
layout their children follow:

- HRowCol - This panel arranges it's children in a row from left to right.
- VRowCol - This panel arranges it's children in a column from top to bottom.
- Single - Can only contain one child.
- TabFolder - Each child is a separate tab in the TabFolder.
- Form - Similar to the current DataEntry screen class. Children, which must be display fields are arranged in a form using sys.df_row and sys.df_col to figure out placement. Rows and cols in a Form are relative to that Form only and do not affect any other panels. The first row and the first col used do not need to be 1.
- Grid - Similar to the Overlay layout type. All children must be other panels. Each child, which must be a subpanel specifies it's size and position as a percent of what's available.
- Overlay - Almost the same as a TabFolder panel, without the tabs. Only one child of an Overlay is visible at a time and it takes all of the space that the Overlay panel allows.
- List - Similar to the current SrollList screen class. Children must be display fields and can be part of the header or the detail of the List. Like Form, List children also use sys.df_row and sys.df_col to indicate position.
- ListView - New (to 4C) A ListView arranges it's children, which must be display fields, in a list with optional sorting column headers. You can resize the columns in the list.
- HSplitPane - Like an HRowCol except there is a slider between panels.
- VSplitPane - Like a VRowCol except there is a slider between panels.
- Title - This is a special panel type that can only have display field children. Fields in the Title panel show up in the title bar. Whether or not they actually show up depend on how the layout used specifies the title.

---

## Panel Attributes

There are a lot of different attributes that you can
specify along with the panel type.
Not all attributes are used by all panel types.
Some attributes that you can define are:

- Title - Text to display at the top of the panel. If the panel has a frame, then the title straddles the frame.
- FrameType - Etched, Raised, or None
- MarginHeight - How much space in pixels should be reserved for top and bottom margins.
- MarginWidth - How much space in pixels should be reserved for left and right margins.

Panel sttributes that determine what to do with extra space
all work with percentages.
They are:

- AdjustChildrenWidth - The percentage of extra width to give to children. The children determine what to do with the extra width.
- AdjustChildrenHeight - The percentage of extra height to give to children. The children determine what to do with the extra height.
- AdjustLeft - the pct of extra width to give to the left margin.
- AdjustRight - the pct of extra width to give to the right margin
- AdjustTop - the pct of extra height to give to the top margin
- AdjustBottom - the pct of extra height to give to the bottom margin

Even though there are reasonable defaults used if none of these
values are specified it is a good idea to specify them when
you define a panel and to test what happens to your panels when they
resize.

Some attributes affect only HRowCol and VRowCol panels.
They are:

- Spacing - The minimum number of pixels to use to separate children. When extra space is available and not used by children or margins, it will end up here.
- EqualWidth - Whether children should be equal width. Less wide children will be stretched. An example where you might want to use this is in a VRowCol with all cmdbtn children. EqualWidth is also used by VSplitPane panels.
- EqualHeight - Whether children should be equal height. Less tall children will be stretched. EqualHeight is also used by HSplitPane panels.
- DrawSep - Draw a separator between children.

The attributes that affect only Grid panels are:

- GridWidth
- GridHeight
- GridXPos
- GridYPos

There are 2 attributes that allow children to grab more of the
extra space available than their siblings.
These are used when the parent panel is an HRowCol/HSplitPane
or a VRowCol/VSplitPane.
Both are percentages of total extra space available.
They are:

- GrabWidth - Percentage of extra width that this child will grab when extra width is available. Use this when the parent panel is an HRowCol or HSplitPane.
- GrabHeight - Percentage of extra height that this child will grab when extra height is available. Use this when the parent panel is a VRowCol or VSplitPane.

If you specify a ngative number for either GrabWidth or GrabHeight,
then that subpanel will not get any of the extra space even if
the other sibling panels grab less than 100 % total.

---

## Defining Panels

There are 2 ways to define panels in 4C.
The first method is using 4C bootstrap programs.
The other method is to use the windows panel screen painter
client program,
[wpnlsp.](https://www.4csoftware.com/docs/Features/Clients/wpnlsp.html)
Both methods make use of two new bootstrap files.
Understanding these files is important in understanding
the way panels work.
They new files are:

- sys.pnl_hdr - defines main attributes of the panels.
- sys.pnl_det - defines a panels subpanels and how the subpanels are arranged.

In addition to the 2 new files, there are also 2 new fields
in sys.dpy_field that are used by panel programs.
The two fields are:

- sys.df_pnlname - The name of the panel that this field belongs to.
- sys.df_pnlseq - The order of this field in the panel. sys.df_pnlseq is not used by Form or List panels.

All panels have details.
The details can be either other panels or they can be display
fields.

One panel cannot have both subpanel and display field details.
A panel that has display field details is said to be a leaf panel.

All display fields must be in a panel.

There are several steps involved in making a screen program a
screen panel program.

- Set the program class to "Panel".
- From the Program characteristics screen, use the context menu to access panel definitions.
- In the panel definition screen add the desired panels.
- For each panel add the details for that panel.

There are currently 2 special panel names, "Root" and "Title".
Every panel program must have one Root panel.
This panel can be a leaf or a non leaf panel.
The Title panel is necessary only if you have display fields
that you want in the title bar.

Every display field needs to belong to one and only one panel.
As you add display fields to a panel program you need to assign
them to a panel.
You can do this as you define the display field, or you
can do it later using the panel definition screens or with wpnlsp.

---

## Miscellaneous

One additional 4C feature makes using Panels easier.
Display fields can have either a top label or a side label
associated with them.
You can define defaults for these labels in the data dictionary.
If defaults are defined, then simply selecting top or side
as a label type will set a default label.
Scrolldet and lvitem display fields can only have top labels.
Using display field labels greatly reduces the clutter
in the display field definition screen.

In order to use ListViews, you need to have an lvitem defined
in the s_dftype file.
Copy from the system directory if necessary.

There are several new font classes that can be added
to the 4csfont.def file that affect panels.
Look at the entries in the default one in HOME_4C/lib
to see what is new.

If you have bootstrap file definitions in your application
directory make sure you update them from the system directory.

---

## Examples

Before writing your own panel programs,
it may be helpful to see a few in action.
There are a bunch of examples currently in the 4cSys
application directory.
Some of these are just dumb programs that I have been playing with
to test different features.
Some however are real programs.
Some of the more interesting ones are:

- demo.hrc.1 - This is a copy of sys.pr.paste.exp except it does not update any files. This program doesn't really do anything, but it shows several VRowCol and HRowCol panels working together. The Root panel is a VRowCol with 3 HRowCol subpanels. The 3 HRowCol subpanels are hrc1, hrc2, and cmdhrc. hrc1 has 2 subpanels, vrc1-1 and vrc1-2. hrc2 has 2 subpanels, specpnl and optpnl. specpnl is another HRowCol with 2 subpanels, specvrc and speccmdvrc. Run this program to see the results. Resize it and see how the panels act. Use the bootstraps to view the panel definitions in this program. Look at the details for each defined panel. Try changing some of the panel attributes and see how this affects the display. Look at the display field definitions for this program and notice that there are no literals defined as fields that are used as labels. Every display field that needs a label has the label defined as part of the display field. Try some of the other programs in the demo mod. Not all are panel programs though.
- sys.prog.mstr - This is the main program development screen. Not complicated, just a little neater and probably fairly easy to follow the panel definitions.
- sys.prog.maint - This is the program characteristics screen. Quite a bit more complicated because there are lots of nested panels. Notice that what used to be several programs is now combined into one and that similar fields are grouped together in tabs. Notice that even when a panel is hidden, if a field in that panel needs input, the panel will become visible. You can see this simply by pressing return on each field of sys.prog.maint. See also Unresolved Issues below.
- sys.pf.maint - This is the program file definition screen. It is an HSplitPane with a ListView and some HRowCol and VRowCol panels. Notice that the ListView allows sorting by sequence, filename, and by asfile. The sorting is controlled by the program using command pcls and driver restarts. The HSplitPane allows the Splitter to move and resize the panels to the immediate left and right.
- sys.df.fm.pnl - This is the display field definition screen you see for any panel program. Hopefully, you'll agree that this is an easier screen to use for adding display fields.
- sys.pnh.fm - This is the bootstrap program for adding panels. You will probably use the panel screen painter more often than this, but understanding this program may make the panel screen painter more intuitive.
- sys.pnd.fm - This is the program for adding details to a non leaf panel. You can run it by double clicking on any non leaf panel in sys.pnh.fm.
- sys.pnldf.sel - This program allows you to select display fields to add to a leaf panel. You can get to it by double clicking a leaf panel in sys.pnh.fm. This program works with sys.pnldf.fm
- sys.pnldf.fm - This program works along with sys.pnldf.sel and allows you to reorder and delete display fields from a panel. Deleting display fields from a panel does not delete the display fields. It allows them to be used by another panel.

---

## Tutorial

The following will guide you through writing your first
few panel programs.
Before you start,
make sure that you have the current file definitions in the
application directory you will be using.
You can set up a demo application directory suitable for this
purpose by:

- isrestoring the HOME_4C/lib/skel.df into a new directory
- xlexporting the $sys and sys file definitions from the system directory
- xlimporting them into your directory.
- adding the application to your _4CSRVRCONFIG file. Make sure you specify sys.menu.tv as the program to run when the application starts.
- running the application and adding a new category, demo.

Follow these steps and you will have your first panel program.

1. Run the 4cclient and connect to your server and application.
2. Select Mod Maintenance and add a new mod. Use demo progs as reason.
3. Select the new mod and then select progs from the context menu.
4. From the mod prog list select prog specs.
5. Add a new program with the name demo.panel.1 and category demo. Specify Panel as the program class and Default as the layout. Exit this program and you will be back in the mod prog list.
6. Select AddProg from the mod prog list context menu and enter demo.panel.1 at the Program: prompt. After successful add, exit the AddProg dialog. You will be back at the mod prog list with demo.panel.1 in the list. You can now make modifications to this program.
7. Goto the PrFiles definition screen for this program and add sys.program. Do not enter any driver info. Exit PrFiles. You should be back in the main development screen.
8. Goto the DisplayField definition screen. Add two fields, sys.pr_name and sys.pr_catg. For both specify inpdata as sdftype and Side as label type. Do not add any other info for either field. Notice that both fields have labels defaulted from the data dictionary.
9. Goto the program characteristics screen. From the context menu, select Panels.
10. Add a new panel, Name - Root Type - VRowCol Leaf - y Frame - y FrameStyle - Raised Title - First Panel Program Leave the defaulted values alone for now. We needed to specify 'y' for leaf since this panel is going to contain display fields and not other panels.
11. Exit Add Mode and enter panel details. 2 programs should start at the bottom.
12. Select both available display fields. Then press the AddSelected button. Press ok when prompted. The two fields should show up in the left side program and disappear from the right side program. However, I think there's a bug. If they don't appear on the left, cancel and reenter panel details. They should show up.
13. Exit back to the main development screen. Compile and run your program.
14. Play with resizing it. Go back to the panel definitions and see what happens with changing some of the options.
15. Go back to the display fields program and notice that the panel info shows up there.

Congratulations, you've written a panel program. :)

We will now write a much more complicated program
that embeds sub panels and makes use of multiple panel
types.

1. Create a new program named demo.panel.2 and put it on the same mod as demo.panel.1.
2. Goto PrFiles and add sys.program with no driver options specified.
3. Goto DpyFields and add the following Fields/SDFType/LabelType `sys.pr_name,inpdata,Side sys.pr_catg,inpdata,Side sys.pr_desc,inpdata,Top sys.pr_initpcl,inpdata,Side sys.pr_flpcl,inpdata,Side sys.pr_eflpcl,inpdata,Side sys.pr_endpcl,inpdata,Side sys.pr_inpflag,chkbox,Side sys.pr_drflag,chkbox,Side sys.pr_runprog,inpdata,Side sys.pr_btstyle,sellist,Side`
4. Add the following Literals. Set SDFType to cmdbtn for all 3. Don't specify any LabelType. It will default to None. `OK Apply Cancel`

Now we can define the panels.
What we want is a main data entry area on the left and
some command buttons on the right.
The data entry area will be further divided into
some input fields at the top, and a tabfolder at the bottom.
The tabfolder wil have two tabs,
one that shows the pcl fields and one that
shows some program options.
Here's how we do it.

1. Go to the Panel Definition screen. Add the following Panels. Root - The Root panel will have 2 subpanels, the main dataentry panel and the command button panel. Set the following options for Root: `Type - HRowCol Leaf - n MarginW - 3 MarginH - 3 Frame - y Framestyle - Raised Title - Root AdjChWidth - 100 AdjChHeight - 100 AdjLeft - 0 AdjRight - 0 AdjTop - 0 AdjBottom - 0 Spacing - 3 EqWidth - n EqHeight - y DrawSep - n` mainvrc - This is our main data entry area. It will have 3 subpanels, a VRowCol, a Single, and a TabFolder. Set the following options for mainvrc: `Type - VRowCol Leaf - n MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - MainVRC AdjChWidth - 100 AdjChHeight - 100 AdjLeft - 0 AdjRight - 0 AdjTop - 0 AdjBottom - 0 Spacing - 3 EqWidth - y EqHeight - n DrawSep - n` cmdvrc - This is our command button area. The buttons will be arranged vertically and be of equal width. Set the following options for cmdvrc: `Type - VRowCol Leaf - y MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - Commands AdjChWidth - 0 AdjChHeight - 0 AdjLeft - 50 AdjRight - 50 AdjTop - 0 AdjBottom - 50 Spacing - 3 EqWidth - y EqHeight - n DrawSep - n` vrc1 - This panel will contain two input fields. It will be the first subpanel of mainvrc. Set the following options for vrc1: `Type - VRowCol Leaf - y MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - vrc1 AdjChWidth - 0 AdjChHeight - 0 AdjLeft - 50 AdjRight - 50 AdjTop - 0 AdjBottom - 100 Spacing - 3 EqWidth - n EqHeight - n DrawSep - n` s1 - This panel will contain 1 input field. It will be the 2nd subpanel of mainvrc. Set the following options for s1: `Type - Single Leaf - y MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - Single AdjChWidth - 0 AdjChHeight - 0 AdjLeft - 50 AdjRight - 50 AdjTop - 50 AdjBottom - 50` tabf - This will be our TabFolder and the 3rd child of mainvrc. Set the following options for tabf: `Type - TabFolder Leaf - n MarginW - 3 MarginH - 3 Frame - n Framestyle - Title - AdjChWidth - 100 AdjChHeight - 100 AdjLeft - 0 AdjRight - 0 AdjTop - 0 AdjBottom - 0` vrc2 - This will contain the pcl fields and will be the first child of tabf. Set the following options for vrc2: `Type - VRowCol Leaf - y MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - PCLs AdjChWidth - 0 AdjChHeight - 0 AdjLeft - 50 AdjRight - 50 AdjTop - 0 AdjBottom - 100 Spacing - 3 EqWidth - n EqHeight - n DrawSep - n` hrc1 - This panel will contain two other panels. It is the 2nd child of tabf. Set the following options for hrc1: `Type - HRowCol Leaf - n MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - Options AdjChWidth - 100 AdjChHeight - 100 AdjLeft - 0 AdjRight - 0 AdjTop - 0 AdjBottom - 0 Spacing - 3 EqWidth - n EqHeight - y DrawSep - n` vrc3 - This will contain 2 checkboxes. It is the first child of hrc1. Set the following options for vrc3: `Type - VRowCol Leaf - y MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - vrc3 AdjChWidth - 0 AdjChHeight - 0 AdjLeft - 50 AdjRight - 50 AdjTop - 0 AdjBottom - 100 Spacing - 3 EqWidth - n EqHeight - n DrawSep - n` vrc4 - This will contain 2 display fields. It is the first child of hrc1 and our last panel. Set the following options for vrc4: `Type - VRowCol Leaf - y MarginW - 3 MarginH - 3 Frame - y Framestyle - Etched Title - vrc4 AdjChWidth - 0 AdjChHeight - 0 AdjLeft - 50 AdjRight - 50 AdjTop - 0 AdjBottom - 100 Spacing - 3 EqWidth - n EqHeight - n DrawSep - n`
2. Next add the details for the 4 non leaf panels. Here's how: Select root in the panel definition screen and press rtn. Add 2 details. Seq - 10, SubPanel - mainvrc, GrabW - 100 Seq - 20, SubPanel - cmdvrc Exit panel details. Select mainvrc and press rtn. Add 3 details for mainvrc. Seq - 10, SubPanel - vrc1 Seq - 20, SubPanel - s1 Seq - 30, SubPanel - tabf Exit panel details. Select tabf and press rtn. Add 2 details for tabf. Seq - 10, SubPanel - vrc2 Seq - 20, SubPanel - hrc1 Exit panel details. Select hrc1 and press rtn. Add 2 details for hrc1. Seq - 10, SubPanel - vrc3 Seq - 20, SubPanel - vrc4 Exit panel details.
3. Next add the details for the 6 leaf panels. Here's how: Select cmdvrc and press return. Select the OK, Apply, and Cancel DFields. Press AddSelected Exit the details. Select vrc1 and press return. Select sys.pr_name and sys.pr_catg. Press AddSelected. Exit the details. Select s1 and press return. Select sys.pr_desc. Press AddSelected. Exit the details. Select vrc2 and press return. Select sys.pr_initpcl, sys.pr_flpcl, sys.pr_eflpcl, and sys.pr_endpcl. Press AddSelected. Exit the details. Select vrc3 and press return. Select sys.pr_inpflag and sys.pr_drflag. Press AddSelected. Exit the details. Select vrc4 and press return. Select sys.pr_runprog and sys.pr_btstyle. Press AddSelected. Exit the details.
4. Exit back to the main Prog Development screen. Compile and run the program. Fix my typos and compile/run again.

Some features of demo.panel.2 worth noting are:

- The way GrabWidth works in the children of Root.
- Titles in the children of TabFolders display in the Tab rather than in the Frame.
- It doesn't really do anything other than illustrate how panels can work together to make a reasonable GUI. In most programs, you probably won't want quite so many titles or margins. In the example, it makes it easier to see the different panels at run time.

If you can understand the way panels work in this program,
then I can consider myself a successful doc writer.
Congratulations to both of us.
If not, then please call or email and I will do my best to make it clearer.

---

## Panel Type Specifics

Some panel behaviors are related to certain panel types.
Some of these are temporary peculiarities that will be fixed in the future.
Others are that way because they need to be.
Those behaviors are described here.

- HRowCol Any Non leaf HRowCol Panel usually should be set to EqualHeight.
- VRowCol Any Non leaf VRowCol Panel usually should be set to EqualWidth.

---

## Unresolved Issues

- So far, panels have been implemented without making any changes to the way that 4C runs display fields. They are always processed in order and fields are only skipped when the application specifically chooses to skip them. When a panel is hidden, either because it is in a panel TabFolder or a panel Overlay, the panel is automatically raised to allow input on the field. It may be desirable to be able specify as part of the panel definition how to traverse fields. This may mean automatically tabbing past hidden panels.
- Sometimes it may be desirable to have some panels that are not part of the field loop at all. Panels that have cmdbtns, checkboxes, and rblists fall in to this category. This may require allowing fields other than cmdbtns to have a command pcl associated with them.
- There currently isn't any way to see which columns of a ListView will allow sorting.

