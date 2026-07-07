---
title: "sys.set_dfattr()"
description: "allows runtime modification of report display fiel"
weight: 279
draft: false
---

## Purpose

`sys.set_dfattr()` allows runtime modification of report display field device attributes.

## Usage

```text
ret = sys.set_dfattr(<dflabel>, <attr> [ , <attr> ... ]);
```

## Arguments

- `integer <dflabel>` — the unique label id of the display field.
This is in the display field specs and normally is upper case.
- `alpha <attr>` — Any valid device attribute that can be defined
for the report field.
Typical ones will be "so", "ul", "bold".
Any attribute can be preceded by "no " in order to take
it away.
In addition, "default" or "no default" may be specified to
control how the attributes specified relate to those
defined in the program specification.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — No current program or no fields in program.

## Where Used

`sys.set_dfattr()` can be called from anywhere. `sys.set_dfattr()` can be called from the INIT PCL to set attributes that need to be set only once, or it may be called from other PCLs to set attributes that change more often.

## Example

```text
In the 4C debugger program, the main menu is sys.prog.dbg.
The StartFldLp PCL is used to turn "so" mode off for each of the
6 menu labels, and for the prompt field.
The code that does this follows:




ok = ''
dbgsel = 0;
prompt = "Enter Selection:";
sys.set_dfattr(SEL1,"no so");
sys.set_dfattr(SEL2,"no so");
sys.set_dfattr(SEL3,"no so");
sys.set_dfattr(SEL4,"no so");
sys.set_dfattr(SEL5,"no so");
sys.set_dfattr(SEL6,"no so");
sys.set_dfattr(PROMPT,"no so");




After a selection is made, either by function key, or by typing the
number without a return, the setsel() PCL is called.
This PCL highlights the selection by setting "so" on, changes the
prompt, and highlights the prompt as well.
The code that does this follows:




if (dbgsel == 1)
    sys.set_dfattr(SEL1,"so");
else if (dbgsel == 2)
    sys.set_dfattr(SEL2,"so");
else if (dbgsel == 3)
    sys.set_dfattr(SEL3,"so");
else if (dbgsel == 4)
    sys.set_dfattr(SEL4,"so");
else if (dbgsel == 5)
    sys.set_dfattr(SEL5,"so");
else if (dbgsel == 6)
    sys.set_dfattr(SEL6,"so");
prompt = "  Selection OK? ";
sys.set_dfattr(PROMPT,"so");
ok = 'y'




Each possibility was tested separately to allow the
insertion of display fields later without affecting the code.
```

## Description

`sys.set_dfattr()` allows you to control the display attributes of a report display field at run time. The attributes that you can set or unset are the same tht can be defined for the field in the sys.df.maint programs. The way you specify the display field to this PCL is by its label. That is, the label defined in sys.dpy_field. This most often will be upper case letters. When a program is compiled, this label is converted to an integer. It always has the value of one less than its field number. If there are n display fields in the program, then the numbers for these fields will vary from 0 to n-1. Thus you could use a for loop to set all display fields between LABEL1 and LABELN. If you wanted to do this, then the code would look like the following:

for (dfnum = LABEL1; dfnum < LABELN; dfnum += 1) sys.set_dfattr(dfnum,"so","no ul");

Each of the attributes corresponds to a rcd in \$dev_cap under \$user.  except for the default and no default attributes.. The attributes correspond to the \$dc_longname field. If you specify "no default", this means that you want to set exactly those attributes specified and leave ALL other attribtes off. If you specify "default", it means to set or unset the attributes specified, but to leave any others specified in the display field definition on. If you specify neither "default" nor "no default", it is the same as specifying "default".

## Bugs/Features/Comments

If you specify an integer instead of a display field label, there is no check to make sure it is within range of the display field numbers. If it is not, you probably get a segment fault or some other very nasty error.

## See Also

[`sys.set_dfoption()`]({{< ref "setdfoption.md" >}})

Back to Top

