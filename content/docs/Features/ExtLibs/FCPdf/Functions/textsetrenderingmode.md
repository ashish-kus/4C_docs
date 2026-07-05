---
title: "TextSetRenderingMode()"
weight: 45
draft: false
---

## Purpose

FCPdf::`TextSetRenderingMode()` sets the rendering mode for new text added to the page.

## Usage

```text
rc = FCPdf::TextSetRenderingMode(<pageident>,<renderingmode>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident.
- `alpha <renderingmode>` — Any of the following
"Fill"
"Stroke"
"FillStroke"
"Invisible"
"FillClipping"
"StrokeClipping"
"FillStrokeClipping"
"Clipping"

## Returns

integer `<rc>`
- `0` — OK
- `< 0` — Error

## Where Used

FCPdf::`TextSetRenderingMode()` can be called anytime that you have a valid FCPdf pageident.

## Description

rc = FCPdf::TextSetRenderingMode(`<pageident>`,`<renderingmode>`);

The page must be in either PageDescriptionMode or TextObjectMode for this function to succeeed.

If successful, the call to FCPdf::`PageSetTextRenderingMode()` will not change the graphics mode of the page.

## See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

