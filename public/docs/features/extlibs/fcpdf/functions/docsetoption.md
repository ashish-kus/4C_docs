# DocSetOption()

## Purpose

FCPdf::`DocSetOption()` sets a global document option.

## Usage

```text
rc = FCPdf::DocSetOption(<docident>,<optname>,<optval>);
```

## Arguments

- `integer <docident>` — A valid docident
- `alpha <optname>` — The name of the option to set
- `alpha <optvalue>` — The value to set the option to.

## Returns

Returns

## Where Used

FCPdf::`DocSetOption()` can be called anytime you have a valid `<docident>` but should be called as soon as possible after creating the document.

## Description

FCPdf::`DocSetOption()` sets a global document option.

Options and values that are currently recognized are

"PrintScaling" - Set this to "None" to give a hint to the pdf consumer application to not scale the image. Any other value here will allow print scaling.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


