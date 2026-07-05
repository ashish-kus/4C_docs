---
title: "sys.cbc_end()"
description: "finalizes the clipboard copy"
weight: 17
draft: false
---

## Purpose

`sys.cbc_end()` finalizes the clipboard copy.

## Usage

```text
sys.cbc_end();
```

## Arguments

None

## Returns

None

## Where Used

`sys.cbc_end()` can only be called if a clipboard copy operation has been started by the 4csrvr application calling [`sys.cbc_init()`]({{< ref "cbcinit.md" >}}). The [`sys.cbc_init()`]({{< ref "cbcinit.md" >}}) and `sys.cbc_end()` calls will normally nest a series of [`sys.cbc_open()`]({{< ref "cbcopen.md" >}}), [`sys.cbc_senddata()`]({{< ref "cbcsenddata.md" >}}), and [`sys.cbc_close()`]({{< ref "cbcclose.md" >}}) calls.

## Description

`sys.cbc_end()` finalizes the clipboard copy and makes the data available for pasting by the 4C Client and by other client applications.

## See Also

Cut/Copy/Paste Overview

[`sys.cbc_init()`]({{< ref "cbcinit.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbc_init()]({{< ref "cbcinit.md" >}})

