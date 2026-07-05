# PageSetFont()

## Purpose

FCPdf::`PageSetFont()` sets the Fontface and Fontsize for text that will be written to the page.

## Usage

```text
rc = FCPdf::PageSetFont(<pageident>,<fontface>,<fontsize> [, <encoding> ]);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident
- `alpha <fontface>` — Font facename
- `float <fontsize>` — Pointsize
- `alpha <encoding>` — Optional arg if default encoding is not adequate.
This is case sensitive and must match one of the libharu encoding strings.
Most useful with a unicode font where you should specify the string "UTF-8".

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid pageident or invalid fontface

## Where Used

FCPdf::`PageSetFont()` can be called anytime that you have a valid pageident and want to change the font for any new text that will be written to the page.

## Description

FCPdf::`PageSetFont()` sets the Fontface and Fontsize for text that will be written to the page.

You can change the font for a page as often as you like and these changes can be made inside or outside of the FCPdf:[`TextBegin()`]({{< ref "textbegin.md" >}})/FCPdf::[`TextEnd()`]({{< ref "textend.md" >}}) blocks.

Currently, FCPdf only supports the 14 fonts that are guaranteed to be available in all PDF consumer applications. They are

"Courier"

"Courier-Bold"

"Courier-Oblique"

"Courier-BoldOblique"

"Helvetica"

"Helvetica-Bold"

"Helvetica-Oblique"

"Helvetica-BoldOblique"

"Times-Roman"

"Times-Bold"

"Times-Italic"

"Times-BoldItalic"

"Symbol"

"ZapfDingbats"

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


