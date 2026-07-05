# DocFree()

## Purpose

FCPdf::`DocFree()` frees all resources used by one FCPdf document.

## Usage

```text
rc = FCPdf::DocFree(<docident>);
```

## Arguments

integer `<docident>` - A valid identifier for an FCPdf document.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid `<docident>`

## Where Used

FCPdf::`DocFree()` can and should be called when you have a valid `<docident>` and are completely done using it.

## Description

FCPdf::`DocFree()` frees all resources used by one FCPdf document.

Once FCPdf:`DocFree()` has been called, the `<docident>` can no longer be used.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


