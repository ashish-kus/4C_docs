# DocGetPaperSize()

## Purpose

FCPdf::`DocGetPaperSize()` returns the default page size for new pages added to an FCPdf document.

## Usage

```text
aval = FCPdf::DocGetPaperSize(<docident>);
```

## Arguments

- `integer <docident>` — A valid FCPdf docident

## Returns

- `alpha <aval>` — The paper size name

## Where Used

FCPdf::`DocGetPaperSize()` can be called anytime that you have a valid docident.

## Description

FCPdf::`DocGetPaperSize()` returns the default page size for new pages added to an FCPdf document.

The paper size name returned will be one of the following

"" - Empty String - Error - Invalid docident

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

"Unknown"

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


