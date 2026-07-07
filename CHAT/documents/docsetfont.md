---
title: "DocSetFont()"
weight: 15
draft: false
---

## Purpose

FCPdf::`DocSetFont()` sets the default Fontface and Fontsize for new pages added to the FCPdf document.

## Usage

```text
rc = FCPdf::DocSetFont(<docident>,<fontface>,<fontsize> [, <encoding> ]);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident
- `alpha <fontface>` — Font facename
- `float <fontsize>` — Pointsize
- `alpha <encoding>` — Optional arg if default encoding is not adequate.
This is case sensitive and must match one of the libharu encoding strings.
Most useful with a unicode font where you should specify the string "UTF-8".

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid docident or invalid fontface

## Where Used

FCPdf::`DocSetFont()` can be called anytime that you have a valid docident and want to change the default font for any new pages that will be added to the document. Normally, if used, it will be called shortly after the document is created.

## Description

FCPdf::`DocSetFont()` sets the default font, facename and  pointsize, for new pages added to the FCPdf document.

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

