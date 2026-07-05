---
title: "sys.get_pagediff()"
description: "returns the difference in the page numbers o"
weight: 168
draft: false
---

## Purpose

`sys.get_pagediff()` returns the difference in the page numbers of the current page and the page last printed on by the current program.

## Usage

```text
pdiff = sys.get_pagediff();
```

## Arguments

None

## Returns

- `>= 0` — difference in page numbers of current page and page of last
printed item for current program.
There are no error returns.

## Where Used

`sys.get_pagediff()` can be called from rpt programs after pushing another program, but before printing another field.

## Example

```text
/*
     Print details if any
*/
sys.push_prog("print.detail");
/*
     If page break caused by nested program
     then exit current page.



     In most cases it is not necessary to check
     if a page boundary was crossed because
     sys.skip() will cause an exit page if you
     skip past a page boundary.
*/
if (sys.get_pagediff())
     sys.exit_page();
```

## Description

`sys.get_pagediff()` returns to the user program the difference in page numbers of the current page and the page last printed on by the current program.

`sys.get_pagediff()` is meant to be called by scrolling programs after calling other printing programs in order to determine if a page boundary was crossed or not. It is not necessary to call this routine unless you MUST know that a page boundary was crossed. In most cases it is not necessary to check if a page boundary was crossed because [`sys.skip()`]({{< ref "skip.md" >}}) will cause an exit page if you skip past a page boundary. Normally, you will only need to call [`sys.get_linediff()`]({{< ref "getlinediff.md" >}}) and [`sys.skip()`]({{< ref "skip.md" >}}) in order to deal with programs nested withing scrolling programs.

It makes no sense to call `sys.get_pagediff()` from a non-scrolling program or from any non-printing program.

## See Also

[`sys.page()`]({{< ref "page.md" >}}) [`sys.skip()`]({{< ref "skip.md" >}}) [`sys.end_page()`]({{< ref "endpage.md" >}}) [`sys.exit_page()`]({{< ref "exitpage.md" >}}) [`sys.page_isfull()`]({{< ref "pageisfull.md" >}}) [`sys.get_linediff()`]({{< ref "getlinediff.md" >}}) [`sys.is_tof()`]({{< ref "istof.md" >}})

Back to Top

