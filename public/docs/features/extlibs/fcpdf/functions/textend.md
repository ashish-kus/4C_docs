# TextEnd()

## Purpose

FCPdf::`TextEnd()` signals that you are done in text mode and changes the graphics mode of the page back to PageDescriptionMode.

## Usage

```text
rc = FCPdf::TextEnd(<pageident>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident.

## Returns

integer `<rc>`
- `0` — OK
- `-1 -- Error` — Invalid pageident or invalid graphics mode.

## Where Used

FCPdf::`TextEnd()` can be called anytime you have a valid pageident to a FCPdf page with current graphics mode being TextObjectMode.

## Description

FCPdf::`TextEnd()` signals that you are done in text mode and changes the pages graphics mode back to PageDescriptionMode.

The only valid graphics mode that allows calls to FCPdf::`TextEnd()` is TextObjectMode.

If the call to  FCPdf::`TextEnd()` is successful, the new graphics mode is PageDescriptionMode.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


