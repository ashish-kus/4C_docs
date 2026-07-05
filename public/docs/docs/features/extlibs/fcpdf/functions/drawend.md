# DrawEnd()

## Purpose

FCPdf::`DrawEnd()` signals that you are done in drawing mode and changes the graphics mode back to PageDescriptionMode.

## Usage

```text
rc = FCPdf::DrawEnd(<pageident> [, <strokeflag> [, <fillflag> ] ]);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident.
- `integer <strokeflag>` — Optional, defaults to 1
pass 0 to not draw the edge of paths using current line width
and current stroke color, 1 to draw the edges
- `integer <fillflag>` — Optional, defaults to 0
pass 0 to not fill the inside of paths with the current fill color,
1 to fill the paths with current fill color.

## Returns

integer `<rc>`
- `0` — OK
- `-1 -- Error` — Invalid pageident or invalid graphics mode.

## Where Used

FCPdf::`DrawEnd()` can be called anytime you have a valid pageident to a FCPdf page with current graphics mode being PathObjectMode.

## Description

FCPdf::`DrawEnd()` signals that you are done in drawing mode and and want all paths drawn and/or filled using the current linewidth, stroke color and fill color.

The only valid graphics mode that allows calls to FCPdf::`DrawEnd()` is PathObjectMode.

If the call to  FCPdf::`DrawEnd()` is successful, the new graphics mode is PageDescriptionMode.

If you have not done any drawing since calling FCPdf::[`DrawBegin()`]({{< ref "drawbegin.md" >}}), then this call will fail due to the graphics mode being invalid.

## Bugs/Features/Comments

Certain FCPdf functions will fail once you have called a drawing operation and have not yet called FCPdf:`DrawEnd()`. These functions include FCPDf::[`PageSetLineWidth()`]({{< ref "pagesetlinewidth.md" >}}), FCPdf::`PageSetRGBStroke()`, FCPdf::`PageSetRGBFill()`, FCPdf::`PageSetCMYKStroke()`, and FCPdf::`PageSetCMYKFill()`. If you need to change these, while drawing, you must first call FCPdf::`DrawEnd()` and then FCPdf::[`DrawBegin()`]({{< ref "drawbegin.md" >}}).

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


