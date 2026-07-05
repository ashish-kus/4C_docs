---
title: "DocSetFontSize()"
weight: 17
draft: false
---

## Purpose

FCPdf::`DocSetFontSize()` sets the default pointsize to use for the font on new pages added to the FCPdf document.

## Usage

```text
rc = FCPdf::DocSetFontSize(<docident>,<fontsize>);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident
- `float <pointsize>` — The size in points to use as a default for any
new pages added to the FCPdf document.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid docident

## Where Used

FCPdf::`DocSetFontSize()` can be called anytime that you have a valid docident and want to change the default fontsize for any new pages that will be added to the document. Normally, if used, it will be called shortly after the document is created.

## Description

FCPdf::`DocSetFontSize()` sets the default Font size for new pages added to the FCPdf document.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

