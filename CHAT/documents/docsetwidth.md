---
title: "DocSetWidth()"
weight: 22
draft: false
---

## Purpose

FCPdf::`DocSetWidth()` sets the default page width for new pages that will be added to the document.

## Usage

```text
rc = FCPdf::DocSetWidth(<docident>,<width>);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident
- `float <width>` — The width in points

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error, probably invalid `<docident>`

## Where Used

FCPdf::`DocSetWidth()` can be called anytime you have a valid docident. However, if used, it will be called shortly after creating the document.

## Description

FCPdf::`DocSetWidth()` sets the default page width for new pages that will be added to the document.

You won't normally need to use this routine because the page width is usually set from papersize and orientation. There may be some unusual cases though where this is be useful.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

