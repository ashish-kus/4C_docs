---
title: "sys.dr_epskip()"
description: "skips lines at scrolling prog EndPage"
weight: 62
draft: false
---

## Purpose

`sys.dr_epskip()` skips lines at scrolling prog EndPage.

## Usage

```text
ret = sys.dr_epskip(<count>);
```

## Arguments

- `integer <count>` — Number of lines to skip.
Should be greater than 0.

## Returns

integer `<ret>`
- `0` — Currently this is the only return.

## Where Used

`sys.dr_epskip()` can be called only from the EndPage PCL of scrolling programs.

## Description

This PCL skips `<count>` lines for a scrolling program. It should only be called during the EndPage PCL processing. `sys.dr_epskip()` works like [`sys.page()`]({{< ref "page.md" >}}) except that `<count>` lines are skipped instead of doing a page break. It can be used when printing labels or when you want to do your own line counting.

## Bugs/Features/Comments

This PCL is obsolete and may be removed without notice. Instead, you should use the bootstrap fields to define the page layout, or in special cases, use the `<nskips>` arg to [`sys.page()`]({{< ref "page.md" >}}).

## See Also

[`sys.page()`]({{< ref "page.md" >}})

Back to Top

## See Also

- [sys.page()]({{< ref "page.md" >}})

