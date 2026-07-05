# DocGetLineWidth()

## Purpose

FCPdf::`DocGetLineWidth()` returns the default linewidth for the document.

## Usage

```text
linewidth = FCPdf::DocGetLineWidth(<docident>);
```

## Arguments

integer `<docident>`

## Returns

- `float <linewidth>` — The default linewidth, in points,  used for drawing

## Where Used

FCPdf::`DocGetLineWidth()` can be called anytime that you have a valid FCPdf docident.

## Description

FCPdf::`DocGetLineWidth()` returns the default linewidth for the document. Initially, the default linewidth for an FCPdf document is 1 point. The linewidth is used for drawing lines and shapes in the document.

Line width is used for writing text when the text rendering mode includes "Stroke".

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


