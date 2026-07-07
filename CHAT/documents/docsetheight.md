---
title: "DocSetHeight()"
weight: 18
draft: false
---

## Purpose

FCPdf::`DocSetHeight()` sets the default page height for new pages that will be added to the document.

## Usage

```text
rc = FCPdf::DocSetHeight(<docident>,<height>);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident
- `float <height>` — The height in points

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error, probably invalid `<docident>`

## Where Used

FCPdf::`DocSetHeight()` can be called anytime you have a valid docident. However, if used, it will be called shortly after creating the document.

## Description

FCPdf::`DocSetHeight()` sets the default page height for new pages that will be added to the document.

You won't normally need to use this routine because the page height is usually set from papersize and orientation. There may be some unusual cases though where this is be useful.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

