# TextWrite()

## Purpose

FCPdf::`TextWrite()` writes some text starting at xpos, ypos.

## Usage

```text
rc = FCPdf::TextWrite(<pageident>,<xpos>,<ypos>,<text>);
```

## Arguments

- `integer <pageident>` — A valid page ident
- `float <xpos>` — The exact x position in points to start writing the text.
- `float <ypos>` — The exact y position in points to start writing the text.
- `alpha <text>` — The text to write on the page.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid `<pageident>` or invalid graphics mode.

## Where Used

FCPdf::`TextWrite()` can be called anytime you have a valid pageident for a page in TextObjectMode. Calls to FCPdf::`TextWrite()` should be made only inside of a FCPdf::[`TextBegin()`]({{< ref "textbegin.md" >}})/FCPdf::[`TextEnd()`]({{< ref "textend.md" >}}) block.

## Description

FCPdf::`TextWrite()` writes some text starting at xpos, ypos. xpos is is the leftmost part of the text including possible "serif" ypos is used as the baseline of the text.

The only valid graphics mode that allows calls to FCPdf::`TextWrite()` is TextObjectMode.

If the call to  FCPdf::`TextWrite()` is successful, the new graphics mode will not change.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


