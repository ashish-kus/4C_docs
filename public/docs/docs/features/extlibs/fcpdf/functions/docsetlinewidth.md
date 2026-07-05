# DocSetLineWidth()

## Purpose

FCPdf::`DocSetLineWidth()` sets the default Linewidth of the document.

## Usage

```text
rc = FCPdf::DocSetLineWidth(<docident>,<linewidth>);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident
- `float <linewidth>` — linewidth in points

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error, probably invalid docident

## Where Used

FCPdf::`DocSetLineWidth()` can be called anytime that you have a valid FCPdf docident. Normally, if used, FCPdf::`DocSetLineWidth()` will be called shortly after creating the document.

## Description

FCPdf::`DocSetLineWidth()` sets the default Linewidth of the document. Initially, the default linewidth for an FCPdf document is 1 point. The linewidth is used for drawing lines and shapes in the document.

Line width is used for writing text when the text rendering mode includes "Stroke".

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


