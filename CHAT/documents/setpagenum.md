---
title: "sys.set_pagenum()"
description: "allows you to modify the internal 4"
weight: 300
draft: false
---

## Purpose

`sys.set_pagenum()` allows you to modify the internal 4C page number variable.

## Usage

```text
ret = sys.set_pagenum(<newpagenum>);
```

## Arguments

- `integer <pagenum>` — The new pagenumber to set for the current
output device.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Current program has no current output device.

## Where Used

`sys.set_pagenum()` can be called from anywhere. It makes most sense to call it in report programs after a [`sys.page()`]({{< ref "page.md" >}}) call and before the printing of any headers, especiall those that may print the page number.

## Description

`sys.set_pagenum()` changes the the internal variable for the current page number of the current output devicer. This only affects the return of the  system PCL [`sys.get_pagenum()`]({{< ref "getpagenum.md" >}}). Internally, another variable is kept that maintains the absolute page number. This means thats [`sys.get_linediff()`]({{< ref "getlinediff.md" >}}) and [`sys.get_pagediff()`]({{< ref "getpagediff.md" >}}) work even after a call to `sys.set_pagenum()`. Both of those PCLs rely on the internal absolute page number variable.

## Bugs/Features/Comments

No checks for ridiculous numbers (i.e. negative) are done.

## See Also

[`sys.page()`]({{< ref "page.md" >}}) [`sys.get_pagenum()`]({{< ref "getpagenum.md" >}})

Back to Top

