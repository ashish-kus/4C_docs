# PageSetFontSize()

## Purpose

FCPdf::`PageSetFontSize()` sets the pointsize to use for writing text on the page.

## Usage

```text
rc = FCPdf::PageSetFontSize(<pageident>,<fontsize>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident
- `float <pointsize>` — The size in points

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid pageident

## Where Used

FCPdf::`PageSetFontSize()` can be called anytime that you have a valid pageident and want to change the fontSize for text being written to the page.

## Description

FCPdf::`PageSetFontSize()` sets the pointsize to use for writing text on the page.

You can change the fontsize for a page as often as you like and these changes can be made inside or outside of the FCPdf:[`TextBegin()`]({{< ref "textbegin.md" >}})/FCPdf::[`TextEnd()`]({{< ref "textend.md" >}}) blocks.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


