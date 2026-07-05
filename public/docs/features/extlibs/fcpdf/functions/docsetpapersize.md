# DocSetPaperSize()

## Purpose

FCPdf::`DocSetPaperSize()` sets the default paper size for new pages in the document to one of a set of standard paper sizes.

## Usage

```text
rc = FCPdf::DocSetPaperSize(<docident>,<papersize>);
```

## Arguments

- `integer <docident>` — A valid FCPdf document identifier
- `alpha <papersize>` — The papersize to use for new pages

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - invalid docident or invalid papersize.

## Where Used

FCPdf::`DocSetPaperSize()` can be called anytime you have a valid FCPdf document identifier. However, normally it will be called  shortly after creating the document.

## Description

FCPdf::`DocSetPaperSize()` sets the default paper size for new pages in the document to one of a set of standard paper sizes.

The paper size set here is the default for new pages added to the document and has no affect on current pages in the document.

Any single page can also change it's own page size.

Allowable paper sizes are

"Letter"

"Legal"

"A3"

"A4"

"A5"

"B4"

"B5"

"Executive"

"US4x6"

"US4x8"

"US5x7"

"Comm10"

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


