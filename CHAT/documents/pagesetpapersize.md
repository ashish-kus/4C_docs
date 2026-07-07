---
title: "PageSetPaperSize()"
weight: 38
draft: false
---

## Purpose

FCPdf::`PageSetPaperSize()` sets the paper size for one specific page in the FCPdf document to one of a set of standard paper sizes.

## Usage

```text
rc = FCPdf::PageSetPaperSize(<pageident>,<papersize>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf page identifier
- `alpha <papersize>` — The papersize to use for specific page

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - invalid pageident or invalid papersize.

## Where Used

FCPdf::`PageSetPaperSize()` can be called anytime you have a valid FCPdf pageident. Normally, when used, it will be called shortly after adding or inserting a new page into the document.

## Description

FCPdf::`PageSetPaperSize()` sets the paper size for one specific page in the FCPdf document to one of a set of standard paper sizes.

Even thought it is legal to change the papersize after you have modified the page, it is better to set all page options that are different from the document defaults immediately after creating the page and before writing to it and before getting information about page dimensions.

Allowable paper sizes are

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

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

