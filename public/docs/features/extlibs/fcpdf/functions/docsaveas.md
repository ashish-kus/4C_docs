# DocSaveAs()

## Purpose

FCPdf::`DocSaveAs()` outputs the FCPdf document to a file on the 4csrvr machine.

## Usage

```text
rc = FCPdf::DocSaveAs(<docident>,<fullpath>);
```

## Arguments

- `integer <docident>` — A valid FCPdf document identifier

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCPdf::`DocSaveAs()` can be called anytime you have a valid FCPdf docident. It normally will be called when you are done creating the document and before you free all the resources for the document.

## Description

FCPdf::`DocSaveAs()` outputs the FCPdf document to a file on the 4csrvr machine.

The `<docident>`, if valid, will remain valid after this call and you can contine modifying the document. However, changes will not show up in the file just written.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


