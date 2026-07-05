# DrawBegin()

## Purpose

FCPdf::`DrawBegin()` lets the FCPdf library know that drawing operations will follow.

## Usage

```text
rc = FCPdf::DrawBegin(<pageident>);
```

## Arguments

- `integer <pageident>` — A valid page ident.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error - Invalid pageident or invalid graphics mode

## Where Used

FCPdf::`DrawBegin()` can be called anytime you have a valid pageident to a FCPdf page with current graphics mode being PageDescriptionMode.

## Description

FCPdf::`DrawBegin()` begins drawing operations.

The only valid graphics mode that allows calls to FCPdf::`DrawBegin()` is PageDescriptionMode. Currently, this is not checked, but you should make sure that your application only calls FCPdf::`DrawBegin()` when the page is in PageDescriptionMode.

If the call to  FCPdf::`DrawBegin()` is successful, the new graphics mode will still be PageDescriptionMode.

## Bugs/Features/Comments

This function doesn't currently do anything, but may need to in the future, so it is recommended that it is used before making FCPdf::Draw... function calls.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


