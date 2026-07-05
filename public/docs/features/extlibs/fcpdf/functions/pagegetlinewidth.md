# PageGetLineWidth()

## Purpose

FCPdf::`PageGetLineWidth()` returns the linewidth used for drwing lines and shapes for the specific page.

## Usage

```text
linewidth = FCPdf::PageGetLineWidth(<pageident>);
```

## Arguments

- `integer <pageident>` — A valide FCPdf pageident.

## Returns

- `float <linewidth>` — The linewidth, in points,  used for drawing on the page

## Where Used

FCPdf::`PageGetLineWidth()` can be called anytime that you have a valid FCPdf pageident.

## Description

FCPdf::`PageGetLineWidth()` returns the linewidth used for drwing lines and shapes for the specific page.

Line width is also used for writing text when the text rendering mode includes "Stroke".

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


