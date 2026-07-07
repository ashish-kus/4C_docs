---
title: "DocNew()"
weight: 13
draft: false
---

## Purpose

FCPdf::`DocNew()` creates a new empty pdf document and returns an identifier to it.

## Usage

```text
docident = FCPdf::DocNew();
```

## Arguments

None

## Returns

integer `<docident>`
- `>= 0` — A docment identifier used in other FCPdf library calls that
need a docident.
- `< 0` — Error

## Where Used

FCPdf::`DocNew()` can be called from anywhere.

## Description

FCPdf::`DocNew()` creates a new empty pdf document and returns an identifier to it.

## Bugs/Features/Comments

This function is an alias for FCPdf::[`DocAlloc()`]({{< ref "docalloc.md" >}}). The 2 functions are 100% equivalent.

All resources used by an FCPdf document must be freed by the application by calling one of FCPdf:[`DocFree()`]({{< ref "docfree.md" >}}) or FCPdf::[`DocFreeAll()`]({{< ref "docfreeall.md" >}})

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

