# 4C Panels Change Log

## 01 August 2012

Version 5.2.3 and higher

## 01 May 2007

Version 4.4.4 and higher

- The Panel Screen painter will show margins for List and ListView panels.
- Panels can have a background color.
- Panels can have a background image. See: [Using Screen Images]({{< ref "../simages.md" >}})
- You can specify margin widths and heights and spacing in units of Pixels, Points, Inches, Millimeters, or DialogUnits.
- You can specify a MinWidth, MinHeight, PrefWidth, and PrefHeight for a panel in units of Pixels, Points, Inches, Millimeters, or DialogUnits. This is useful for panels that have no children and are used only for displaying a background image.
- Non leaf panels do not have to have child panels.

## 28 May 2006

Version 4.4.0 and higher

- inplist and sellist sdftypes will use an extra space for displaying the dropdown arrow. This will be most noticeable in Form panels with very narrow dropdown lists. You can override this by specifying the ncols attribute.
- The wpnlsp program will allow you to Align and Stretch dfields easily. This is most useful in Form panels.

## 01 May 2006

Version 4.4.0 and higher

- If you define a "fixed" font class in your font def file, form children will use this instead of list in the paint mode. It will look for it first under "tiny", then "small", then "default". If not found, then it will still use the "list" font when drawing on the form.

## 09 April 2006

Version 4.4.0 and higher

- Specifying a title, frame, and margins for a TabFolder panel will work.
- You can specify a grabw or grabh value < 0 to prevent the subpanel from ever getting any of the extra available width and height.

## 09 October 2005

- The status area of the panel screen painter shows more display field info.

## 12 September 2005

- `<ctrl+shift+arrowkey>` allows you to increase or decrease the ncols or nrows attribute of dfields.

## 29 December 2003

- There is a new field in sys.pnl_hdr, sys.pnh_adjspcng, that is used to specify the percent of extra space that should be used for spacing in HRowCol and VRowCol panels.
- For non-leaf panels, any extra space not explicitly constrained by the panel definition will be given to the children panels.
- For leaf panels, any extra space adjustment not explicitly set in the panel specification will be given to the right and bottom margins.

HRowCol and VRowCol panels may be affected by the
above changes, since the default was to give extra
height in a VRowCol, and extra width in an HRowCol
to spacing.
Now, you need to explicitly set sys.pnh_adjspcng
field when you need the extra height in a VRowCol or
the extra width in an HRowCol to get used by spacing.

This can be set either through the bootstraps,
or by using the PanelSP.

## 28 December 2003

- The PanelSP will show a thin line around panels that don't have a frame in the Canvas view for the program. This will make it easier to see where you may want to insert new panels and dfields. There is a menu option, ShowPanels, in the File menu that allows for toggling this feature on a per program basis.


## Additional Notes

as long as both client

at least 5.2.3

