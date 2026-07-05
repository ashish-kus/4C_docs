# DocFreeAll()

## Purpose

FCPdf::`DocFreeAll()` frees all resources for all FCPdf docs that arre currently in use by the current 4csrvr process.

## Usage

```text
count = FCPdf::DocFreeAll();
```

## Arguments

None

## Returns

- `integer <count>` — The count of FCPdf documents actuall freed.

## Where Used

FCPdf::`DocFreeAll()` can be called from anywhere.

## Description

FCPdf::`DocFreeAll()` frees all resources for all FCPdf docs that arre currently in use by the current 4csrvr process.

Once FCPDf::`DocFreeAll()` has been called, no functions in the FCPdf library other then FCPdf::[`DocAlloc()`]({{< ref "docalloc.md" >}}) can be called.

## Bugs/Features/Comments

Most applictions that create PDF documents will ussually only be working on one document at a time and should use FCPdf::[`DocFree()`]({{< ref "docfree.md" >}}) instead of FCPdf::`DocFreeAll()`

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


