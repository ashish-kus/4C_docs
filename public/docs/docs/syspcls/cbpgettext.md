# sys.cbp_gettext()

## Purpose

`sys.cbp_gettext()` returns the text of a single clipboard paste item field.

## Usage

```text
<text> = sys.cbp_gettext(<idx>[,<fldno>]));
```

## Arguments

- `integer` — `<idx>` - The index of the paste item.
- `integer` — `<fldno>` - Optional fldno.

## Returns

alpha `<text>`

This will be an empty string or the text of the specified fld.

## Where Used

`sys.cbp_gettext()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_gettext()` returns the text of a single clipboard paste item field. Use `sys.cbp_gettext()` when you want to retrieve fields individually rather than all at once. If you want to retrieve the entire paste item at once into 4C file vars, use [`sys.cbp_getdata()`]({{< ref "cbpgetdata.md" >}}). If field number is not specified, then the text of the first fld is returned. Field numbers specified for `sys.cbp_gettext()` correspond to the field numbers in the 4C file used as a template in the original copy to the clipboard.

## Bugs/Features/Comments

Indexes and field numbers start at 0.

## See Also

Cut/Copy/Paste Overview

[`sys.cbp_getdata()`]({{< ref "cbpgetdata.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbp_getdata()]({{< ref "cbpgetdata.md" >}})


