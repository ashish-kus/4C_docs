---
title: "4C Client/Server Using Colors"
weight: 1
draft: false
---

You can specify foreground and background colors for
most 4C controls.
You can specify defaults for each item in the s_dftype file
and the s_prtype file.
These defaults can be overriden by the client by using an appropriate
environment variable.
The environment variable name is _4C_TYPE_FG or _4C_TYPE_BG.
Examples are:

```text
_4C_SCROLLIST_FG 0:0:0:9 (ColorWindowText)

_4C_SCROLLIST_BG 0:0:0:6 (ColorWindow)

_4C_INPDATA_FG 0:0:0 (Black)

_4C_INPDATA_BG 255:255:255 (White)

```

The values that can be specified are RGB values with about
20 special system colors.
The system colors are specified as 0:0:0:SysColorVal.
When possible, you should use the system colors as opposed to
hardcoded colors.
System colors change as the user changes the display appearance.

The color name that you can specify or search on is only a comment
meant to help you remember what the RGB value means.

The default values can be overridden for individual fields in the
display field details and for individual scrolling programs in the
sl_ovly details.

The following restrictions currently apply to using colors.

1. The only program type that can have FG and BG set are scrolling programs. This may change if WRITTEN demand is high.
2. You cannot change the colors of CmdBtns.
3. When applied to RadioGrps and ChkBoxes, setting the colors does not affect the tiny square or circle used for the checkmark or bulletmark. This may be fixed later. Currently, I don't know how but could probably find out how. These two tiny windows always appear in ColorWindow and ColorWindowText colors.
4. On systems supporting 256 or less colors, hardcoded colors may not appear exactly as specified. The system will use a close enough color. This could also be fixed if WRITTEN demand is high.
