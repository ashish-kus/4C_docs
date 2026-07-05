---
title: "sys.set_dfimage()"
description: "changes the image associated with a display field"
weight: 283
draft: false
---

## Purpose

`sys.set_dfimage()` changes the image associated with a display field.

## Usage

```text
ret = sys.set_dfimage(<dflabel>,<imagepath>);
```

## Arguments

- `integer` — `<dflabel>` - This should be the DFLABEL of the display
field.
- `alpha` — `<imagepath>` - The path of the image on the server.
If the display field type is label or cmdbtn, then this
path should be relative to the FC_IMAGE directory on th server.
If the display field type is image, then this path can
be absolute, relative to the FC_IMAGE dir, or a url.

## Returns

integer `<ret>`
- `0` — OK
- `< 0` — Invalid `<dflabel>`, or cur program is not a screen program

## Where Used

`sys.set_dfimage()` can be called from any screen program that is open. You can not call `sys.set_dfimage()` in the InitPCL.

## Example

```text
See the programs demo.image.1 for an example of using pushbuttons and
labels with images.
See the programs demo.image.2 and demo.image.3 for examples of using
the image display field type.
```

## Description

`sys.set_dfimage()` changes the image of a 4C display field. The display field must have image info associated with it at compile time. If the display field type is label or pushbutton and you use different size images, they will stretch or shrink to the size defined at compile time. Notice, that when you resize the demo.image.1 program, the label gets bigger, but the image used does not change size.

If the display field type is image, the image size can change at run time and the it sizes to the image window depends on other image info associated with the display field at compile time.

## Bugs/Features/Comments

If either the server version or the client version is less than 4.2.2 then `sys.set_dfimage()` always sends the image across the network.

Any program that uses `sys.set_dfimage()` should always initialize any of the images that may change in the "Open" pcl to the default image that you want displayed. Otherwise that last image set may be displayed the next time the program is run if the layout is still running.

## See Also

[`sys.set_dfcolor()`]({{< ref "setdfcolor.md" >}})

[`sys.set_pnlimage()`]({{< ref "setpnlimage.md" >}})

Back to Top

## See Also

- [sys.set_dfcolor()](https://www.4csoftware.com/docs/SysPCLs/set_dfcolor.html)
- [sys.set_pnlimage()](https://www.4csoftware.com/docs/SysPCLs/set_pnlimage.html)

