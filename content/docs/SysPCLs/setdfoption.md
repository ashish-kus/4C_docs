---
title: "sys.set_dfoption()"
description: "allows runtime modification of display fiel"
weight: 285
draft: false
---

## Purpose

`sys.set_dfoption()` allows runtime modification of display field flags.

## Usage

```text
ret = sys.set_dfoption(<dflabel>, <dfoption> [ , <dfoption> ... ]);
```

## Arguments

- `integer <dflabel>` — the unique label id of the display field.
This is in the display field specs and normally is upper case.
- `alpha <dfoption>` — any of the following:
- `"qi", "no qi"` — Quick Input, No Quick Input
- `"nc", "no nc"` — No Change, No No Change
- `"do", "no do"` — Display Only, No Display Only
- `"mi", "no mi"` — Mandatory Input, No Mandatory Input
- `"ne", "no ne"` — No Echo, No No Echo
- `"ab", "no ab"` — Attr Blanks, No Attr Blanks
- `"spc", "no spc"` — Special char processing, No spc processing
- `"ignore", "no ignore"` — Client will not/will not display this field
- `"verify", "no verify"` — Used with inplist.
Allows or disallows input of data not in the inplist.
- `"inpselall", "no inpselall"` — Select all/no text in the display field on input
- `"inpselstart"` — Select start of text in the display field on input
- `"inpselend"` — Select end of text in the display field on input
"inpstripfmt", "no inpstripfmt" -
Allow/Disallow stripping of fmt characters before input.
- `"default"` — OR With compile time defaults
This is the default setting unless one of
"no default" or "merge" is specified
- `"no default"` — Don't OR with compile time defaults
- `"merge"` — Combine with current settings
- `"no merge"` — Do not combine with current settings

## Returns

integer `<ret>`
- `0` — OK
- `-1` — No current program or no fields in program.

## Where Used

`sys.set_dfoption()` can be called from anywhere. `sys.set_dfoption()` can be called from the INIT PCL to set options that need to be set only once, or it may be called from other PCLs to set options that change more often. The most likely options to set and unset are display only and no echo.

## Example

```text
Among the 4C/Med Appt Scheduler programs, there is a program
that prompts for days of the week.
The INIT PCL for this program sets the prompts for the
days and the input field for the days to no echo if
those days are not possible to schedule on.
In addition, the input field is set to display only.
Thus, you may be prompted for all days of the week, or
only for monday and tuesday, or something like that.
The code that does this follows:




if (as_us_daysel[6] != 'y') {
    sys.set_dfoption(PMONDAY,"ne");
    sys.set_dfoption(MONDAY,"ne","do");
}
if (as_us_daysel[0] != 'y') {
    sys.set_dfoption(PTUESDAY,"ne");
    sys.set_dfoption(TUESDAY,"ne","do");
}
if (as_us_daysel[1] != 'y') {
    sys.set_dfoption(PWEDNESDAY,"ne");
    sys.set_dfoption(WEDNESDAY,"ne","do");
}
if (as_us_daysel[2] != 'y') {
    sys.set_dfoption(PTHURSDAY,"ne");
    sys.set_dfoption(THURSDAY,"ne","do");
}
if (as_us_daysel[3] != 'y') {
    sys.set_dfoption(PFRIDAY,"ne");
    sys.set_dfoption(FRIDAY,"ne","do");
}
if (as_us_daysel[4] != 'y') {
    sys.set_dfoption(PSATURDAY,"ne");
    sys.set_dfoption(SATURDAY,"ne","do");
}
if (as_us_daysel[5] != 'y') {
    sys.set_dfoption(PSUNDAY,"ne");
    sys.set_dfoption(SUNDAY,"ne","do");
}




The following demo programs show different ways that "ignore" works
with Panel List programs and Panel ListView programs.


dtf.lv2.s -
Run this program to see a Panel ListView program and a Panel List
program embedded in a layout.



dtf.lv.2 -
Run this progam standalone to see a Panel ListView
program run in it's own layout.



dtf.list.2 -
Run this program to a Panel List program run in it's own layout.



Both the Panel List program and the Panel ListView program prompt to
let you decide whether 2 of the list items should be set to "ignore"
in the InitPCL, the OpenPCL, or not at all.
It is worthwhile to notice the differences.
```

## Description

`sys.set_dfoption()` allows you to control some of the options of a display field at run time. The options that you can control are listed above. The way you specify the display field to this PCL is by its label. That is, the label defined in sys.dpy_field. This most often will be upper case letters. When a program is compiled, this label is converted to an integer. It always has the value of one less than its field number. If there are n display fields in the program, then the numbers for these fields will vary from 0 to n-1. Thus you could use a for loop to set all display fields between LABEL1 and LABELN. If you wanted to do this, then the code would look like the following:

for (dfnum = LABEL1; dfnum < LABELN; dfnum += 1) sys.set_dfoption(dfnum,"do","ne");

Most of the options corresponds to a flag in sys.dpy_field, that can be set in the display field settings. The settings here are considered the "default" options and unless one of "no default" or "merge" is specified, the options to sys.set_dfoption are combined with all the other "default" options

If you specify "no default", this means that you want to set exactly those flags and leave ALL other flags unset. If you specify "default", it means to set or unset the flags specified, but to leave the others as specified in the display field definition. If you specify neither "default" nor "no default", it is the same as specifying "default".

"merge" is useful in the cases where you make multiple calls to sys.set_dfoption and do not want to undo the previous settings.

If a Panel ListView item or Panel List item is set to "ignore" in the InitPCL it cannot later be set to "no ignore" If a Panel ListView item is set to "ignore" in the InitPCL, then extra white space is removed from the layout if possible.

Requirements

In order for "ignore" and "no ignore" to work correctly with Panel ListViews and Panel Lists both client and server need to be at version 4.6.3 or higher.

## Bugs/Features/Comments

A field that you want to change to and from DO must not be defined as DO in sys.dpy_field. It can be defined as an input field and then set to display only in the INIT PCL.

If you specify an integer instead of a display field label, there is no check to make sure it is within range of the display field numbers. If it is not, you probably get a segment fault or some other very nasty error.

"inpselall", "inpselstart", "inpselend", require both the 4csrvr and the 4cclient to be at version 4.8.1 or higher.

"inpstripfmt" requires the 4csrvr to be at version 4.8.1 or higher.

## See Also

[`sys.set_dfattr()`]({{< ref "setdfattr.md" >}})

Back to Top

