# sys.dev_nlines()

## Purpose

`sys.dev_nlines()` returns the number of lines on the current output device.

## Usage

```text
nlines  = sys.dev_nlines();
```

## Arguments

None

## Returns

- `integer nlines` — The number of lines
on the current output device.

## Where Used

`sys.dev_nlines()` can be called from anywhere, but you should be careful if it is called from the Init, End, or Exit PCLs.

## Description

`sys.dev_nlines()` returns the number of lines on the current output device. The current output device may not be same device as that specified by the program. This is possible if `sys.dev_nlines()` is called from the Init PCL, and the calling program is not using the same device. In this case `sys.dev_nlines()` would return the number of lines for the calling programs output device.

## See Also

[`sys.get_msgline1()`]({{< ref "getmsgline1.md" >}})

[`sys.get_msgline2()`]({{< ref "getmsgline2.md" >}})

Back to Top

## See Also

- [sys.get_msgline1()]({{< ref "getmsgline1.md" >}})
- [sys.get_msgline2()]({{< ref "getmsgline2.md" >}})


