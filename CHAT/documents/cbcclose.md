---
title: "sys.cbc_close()"
description: "ends the clipboard copy operation for the curren"
weight: 16
draft: false
---

## Purpose

`sys.cbc_close()` ends the clipboard copy operation for the current type.

## Usage

```text
<ret> = sys.cbc_close(<asfile>);
```

## Arguments

- `asfile` — `<asfile>` - Should be the same asfile used in the
sys.cbc_open() call.

## Returns

- `integer` — `<ret>`
- `-1` — Error - illegal `<asfile>` or `<asfile>` does not match
the asfile used in the sys.cbc_open() call.
- `0` — OK

## Where Used

`sys.cbc_close()` can be called anytime while a clipboard copy operation is open.

## Description

`sys.cbc_close()` ends the clipboard copy operation for the current type and sends the data to the client. Even though the client has the data it will not be available for pasting by the 4C Client or by any other client application until the 4csrvr application has called [`sys.cbc_end()`]({{< ref "cbcend.md" >}}).

## See Also

Cut/Copy/Paste Overview

[`sys.cbc_open()`]({{< ref "cbcopen.md" >}})

[`sys.cbc_end()`]({{< ref "cbcend.md" >}})

[`sys.cbc_senddata()`]({{< ref "cbcsenddata.md" >}})

[`sys.cbc_sendtext()`]({{< ref "cbcsendtext.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbc_open()]({{< ref "cbcopen.md" >}})
- [sys.cbc_end()]({{< ref "cbcend.md" >}})
- [sys.cbc_senddata()]({{< ref "cbcsenddata.md" >}})
- [sys.cbc_sendtext()]({{< ref "cbcsendtext.md" >}})

