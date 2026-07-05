---
title: "TextRect()"
weight: 43
draft: false
---

## Purpose

FCPdf::`TextRect()` splits a text string into one or more lines and formats them nicely in the specified rectangle.

## Usage

```text
FCPdf::TextRect(<pageident>,<rectleft>,<rectbtm>,<rectwidth>,<rectheight>,<text>,<alignmode>);
```

## Arguments

- `integer <pageident>` — A valid page ident
- `float <rectleft>` — The leftmost position in points of the rectangle
- `float <rectbtm>` — The bottommost position in points of the rectangle
- `float <rectwidth>` — The width of the rectangle in points
- `float <rectheight>` — The height of the rectangle in points
- `alpha <text>` — The text to write inside of the specified rectangle
- `alpha <alignmode>` — One of "Left", "Right", "Center" or "Justify"

## Returns

integer `<rc>`
- `>= 0` — OK - This will be the number of characters written which may be less than
the length of `<text>`.
- `-1` — Error - Invalid `<pageident>` or some other error

## Where Used

FCPdf::`TextRect()` can be called from anywhere as long as a it is somewhere between FCPdf::[`TextBegin()`]({{< ref "textbegin.md" >}}) and FCPdf::[`TextEnd()`]({{< ref "textend.md" >}}) calls

## Description

FCPdf::`TextRect()` will format the text and write inside of the specified retangle with the leftmost portion of the text at the top of the rectangle. The text may span multiple lines but will be truncated once any of it will extend outside of the specified rectangle. The text `<alignmode>` specifies how the text should be aligned within the rectangle. It can be one of

"Left" - All lines are aligned with the leftmost position of the rectangle

"Right" - All lines are aligned with the rightmost position of the rectangle

"Center" - All lines are centered within the rectangle

"Justify" - With the exception of the last line which may be shorter than the others, all lines have some spacing inserted so that they start at the leftmost position of the rextangle and end at the rightmost position. The last line will beleft justifed but may be shorter than the others

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})

