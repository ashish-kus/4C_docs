---
title: "PageAdd()"
weight: 25
draft: false
---

## Purpose

FCPdf::`PageAdd()` adds a new page to the FCPdf document and returns an ident to the page.

## Usage

```text
pageident = FCPdf::PageAdd(<docident>);
```

## Arguments

- `integer <docident>` — A valid FCPdf document id.

## Returns

- `integer <pageident>` — A FCPdf page identifier that can be used in FCPdf
function calls that require a page identifier.

## Where Used

FCPdf::`PageAdd()` can be called anytime you have a valid document id and need to add a new page to the document.

## Description

FCPdf::`PageAdd()` adds a new page to the FCPdf document and returns an ident to the page.

Other pages in the document can still be accessed and modified as long as you refer to them by their `<pageident>`

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

