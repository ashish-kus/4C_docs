---
title: "DocGetHeight()"
weight: 7
draft: false
---

## Purpose

FCPdf::`DocGetHeight()` returns the current document level default page height for new pages that will be added to the document.

## Usage

```text
height = FCPdf::DocGetHeight(<docident>);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident

## Returns

- `float <height>` — The height in points

## Where Used

FCPdf::`DocGetHeight()` can be called anytime that you have a valid docident.

## Description

FCPdf::`DocGetHeight()` returns the current document level default page height for new pages that will be added to the document.

Unless you have specifically set the document level default page height to someting other than 0, this function will return 0.0.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

