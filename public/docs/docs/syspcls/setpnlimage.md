# sys.set_pnlimage()

## Purpose

`sys.set_pnlimage()` changes the background image of a panel.

## Usage

```text
ret = sys.set_pnlimage(<pnlcdef>,<imagepath>);
```

## Arguments

- `integer <pnlcdef>` — The CDefine for the panel.
- `alpha <imagepath>` — The path to the image.
This can be either a full pathname on the server,
a relative pathname from the FC_IMAGE directory on the server,
or a url.

## Returns

integer `<ret>`
- `0` — OK
- `< 0` — Invalid `<pnlcdef>`, or cur program is not a screen program

## Where Used

`sys.set_pnlimage()` can be called from any screen program that is open. You can not call `sys.set_pnlimage()` in the InitPCL.

## Example

```text
See the demo.image.5 and demo.tile.1 demo programs for examples
of using sys.set_pnlimage().
```

## Description

`sys.set_pnlimage()` changes the background image of a 4C panel. The panel must have image info associated with it at compile time. Other than the path, this image info can not change during run time.

## Bugs/Features/Comments

Any program that uses `sys.set_pnlimage()` should always initialize any of the images that may change in the "Open" pcl to the default image that you want displayed. Otherwise that last image set may be displayed the next time the program is run if the layout is still running.

## See Also

[`sys.set_pnlcolor()`]({{< ref "setpnlcolor.md" >}})

Back to Top

## See Also

- [sys.set_pnlcolor()](https://www.4csoftware.com/docs/SysPCLs/set_pnlcolor.html)


