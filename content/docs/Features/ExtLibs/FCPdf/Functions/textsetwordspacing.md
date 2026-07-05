---
title: "TextSetWordSpacing()"
weight: 46
draft: false
---

## Purpose

FCPdf::`TextSetWordSpacing()` sets the word spacing to use on the specified page.

## Usage

```text
rc = FCPdf::TextSetWordSpacing(<pageident>,<wordspacing>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf page ident
- `float <wordspacing>` — The wordspacing in points.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCPdf::`TextSetWordSpacing()` can be called anytine you have a valid FCPdf page ident.

## Description

FCPdf::`TextSetWordSpacing()` sets the word spacing to use on the specified page.

The page must be in either PageDescriptionMode or TextObjectMode for this function to succeeed.

If successful, the call to FCPdf::`TextSetWordSpacing()` will not change the graphics mode of the page.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

