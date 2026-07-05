# PageGetWidth()

## Purpose

FCPdf::`PageGetWidth()` returns width of a specific page in the FCPdf document.

## Usage

```text
width = FCPdf::PageGetWidth(<pageident>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident

## Returns

- `float <width>` — The width in points

## Where Used

FCPdf::`PageGetWidth()` can be called anytime that you have a valid pageident. You will normally call it shortly after adding or inserting either either the first page of a document or after inserting a page that is a different size than the first page. If all pages are the same size, you only need to call this function after inserting the first page of the document.

## Description

FCPdf::`PageGetWidth()` returns width of a specific page in the FCPdf document.

The width returned is the width of the real page including non printable areas.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


