---
title: "sys.cbp_getdata()"
description: "returns the data of a singl"
weight: 25
draft: false
---

## Purpose

`sys.cbp_getdata()` returns the data of a single clipboard paste item.

## Usage

```text
<ret> = sys.cbp_getdata(<idx>,<asfile>);
```

## Arguments

- `integer <idx>` — The index of the paste item.

## Arguments

- `asfile <asfile>` — The 4C asfile to copy the the
individual fields of the paste item into.

## Returns

- `integer` — `<ret>`
- `-1` — Error, either no paste available, idx out of range,
or `<asfile>` is invalid.
- `0` — OK

## Where Used

`sys.cbp_getdata()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_getdata()` returns the data of a single clipboard paste item. Use `sys.cbp_getdata()` to get a 4C type paste item into individual fields of `<asfile>`. The names of fields in `<asfile>` need to match the names of fields saved in the clipboard during the copy operation. You can only use `sys.cbp_getdata()` if the the paste is a 4C format paste. If it is a Text format paste, then you must use [`sys.cbp_gettext()`]({{< ref "cbpgettext.md" >}}).

## Bugs/Features/Comments

Indexes and field numbers start at 0.

## See Also

Cut/Copy/Paste Overview

[`sys.cbp_gettext()`]({{< ref "cbpgettext.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbp_gettext()]({{< ref "cbpgettext.md" >}})

