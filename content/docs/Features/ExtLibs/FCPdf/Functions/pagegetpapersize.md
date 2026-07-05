---
title: "PageGetPaperSize()"
weight: 31
draft: false
---

## Purpose

FCPdf::`PageGetPaperSize()` returns the page size for a specific page in an FCPdf document.

## Usage

```text
aval = FCPdf::PageGetPaperSize(<pageident>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident

## Returns

- `alpha <aval>` — The paper size name

## Where Used

FCPdf::`PageGetPaperSize()` can be called anytime that you have a valid pageident.

## Description

FCPdf::`PageGetPaperSize()` returns the page size for a specific page in an FCPdf document.

The paper size name returned will be one of the following

"" - Empty String - Error - Invalid pageident

"Letter"

"Legal"

"A3"

"A4"

"A5"

"B4"

"B5"

"Executive"

"US4x6"

"US4x8"

"US5x7"

"Comm10"

"Unknown"

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

