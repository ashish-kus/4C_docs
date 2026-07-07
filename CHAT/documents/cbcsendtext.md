---
title: "sys.cbc_sendtext()"
description: "adds 1 text item to the 4C clipboard"
weight: 21
draft: false
---

## Purpose

`sys.cbc_sendtext()` adds 1 text item to the 4C clipboard.

## Usage

```text
<ret> = sys.cbc_sendtext(<text>);
```

## Arguments

- `alpha <text>` — The text to copy.

## Returns

integer `<ret>`
- `-1` — Error - Either sys.cbc_open() has not been called,
or the current type is not CBC_TEXT.
- `0` — OK

## Where Used

`sys.cbc_sendtext()` can be called only between the corresponding [`sys.cbc_open()`]({{< ref "cbcopen.md" >}}) and [`sys.cbc_close()`]({{< ref "cbcclose.md" >}}) calls and only if the `<type>` specified in the [`sys.cbc_open()`]({{< ref "cbcopen.md" >}}) call is CBC_TEXT.

## Description

`sys.cbc_sendtext()` adds 1 text item to the 4C clipboard.

## See Also

Cut/Copy/Paste Overview

[`sys.cbc_senddata()`]({{< ref "cbcsenddata.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbc_senddata()]({{< ref "cbcsenddata.md" >}})

