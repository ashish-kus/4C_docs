# PageSetLineWidth()

## Purpose

FCPdf::`PageSetLineWidth()` sets the Linewidth to use for drawing for one page of the document.

## Usage

```text
rc = FCPdf::PageSetLineWidth(<pageident>,<linewidth>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident
- `float <linewidth>` — linewidth in points

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error, invalid pageident or invalid graphics mode

## Where Used

FCPdf::`PageSetLineWidth()` can be called anytime that you have a valid FCPdf pageident and the graphics mode of the page is either PageDescriptionMode or TextObjectMode.

## Description

FCPdf::`PageSetLineWidth()` sets the Linewidth to use for drawing for one page of the document. The linewidth is used for drawing lines and shapes in the document.

Line width is also used for writing text when the text rendering mode includes "Stroke".

The page must be in either PageDescriptionMode or TextObjectMode for this function to succeeed. If the page is in PathObject mode, you must call FCPdf::[`DrawEnd()`]({{< ref "drawend.md" >}}) and FCPdf::[`DrawBegin()`]({{< ref "drawbegin.md" >}}) again. The call to FCPdf::`PageSetLineWidth()` can be either inside or outside of a FCPdf::[`DrawBegin()`]({{< ref "drawbegin.md" >}})/FCPdf::[`DrawEnd()`]({{< ref "drawend.md" >}}) block.

If successful, the call to FCPdf::`PageSetLineWidth()` will not change the graphics mode of the page.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


