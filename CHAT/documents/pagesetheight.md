---
title: "PageSetHeight()"
weight: 36
draft: false
---

## Purpose

FCPdf::`PageSetHeight()` sets the page height a specific page in the FCPdf document.

## Usage

```text
rc = FCPdf::PageSetHeight(<pageident>,<height>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident
- `float <height>` — The height in points

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error, probably invalid `<pageident>`

## Where Used

FCPdf::`PageSetHeight()` can be called anytime you have a valid pageident. However, if used, it should normally be called shortly after adding or inserting the page.

## Description

FCPdf::`PageSetHeight()` sets the page height a specific page in the FCPdf document.

You won't normally need to use this routine because the page height is usually set from papersize and orientation. There may be some unusual cases though where this is be useful.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

