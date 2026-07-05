# TextGetWidth()

## Purpose

FCPdf::`TextGetWidth()` returns the width of the specified text in points.

## Usage

```text
textwidth = FCPdf::TextGetWidth(<pageident>,<text>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pagident
- `alpha <text>` — The text to return the width.

## Returns

- `float <textwidth>` — the width of the text using the current font, word spacing,
and char spacing for the page.
- `< 0` — Error

## Where Used

FCPdf::`TextGetWidth()` can be called anytime you have a valid FCPdf pageident.

## Description

FCPdf::`TextGetWidth()` returns the width of the specified text in points.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


