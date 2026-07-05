# PageSetWidth()

## Purpose

FCPdf::`PageSetWidth()` sets the page width a specific page in the FCPdf document.

## Usage

```text
rc = FCPdf::PageSetWidth(<pageident>,<width>);
```

## Arguments

- `integer <pageident>` — A valid FCPdf pageident
- `float <width>` — The width in points

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error, probably invalid `<pageident>`

## Where Used

FCPdf::`PageSetWidth()` can be called anytime you have a valid pageident. However, if used, it should normally be called shortly after adding or inserting the page.

## Description

FCPdf::`PageSetWidth()` sets the page width a specific page in the FCPdf document.

You won't normally need to use this routine because the page width is usually set from papersize and orientation. There may be some unusual cases though where this is be useful.

## See Also

See Also

FCPdf Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCPdf Home]({{< ref "../_index.md" >}})
- [FCPdf Function List]({{< ref "_index.md" >}})


