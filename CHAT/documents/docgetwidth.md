---
title: "DocGetWidth()"
weight: 10
draft: false
---

## Purpose

FCPdf::`DocGetWidth()` returns the current document level default page width for new pages that will be added to the document.

## Usage

```text
width = FCPdf::DocGetWidth(<docident>);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident

## Returns

- `float <width>` — The width in points

## Where Used

FCPdf::`DocGetWidth()` can be called anytime that you have a valid docident.

## Description

FCPdf::`DocGetWidth()` returns the current document level default page width for new pages that will be added to the document.

Unless you have specifically set the document level default page width to someting other than 0, this function will return 0.0.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

