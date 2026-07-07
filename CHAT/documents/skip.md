---
title: "sys.skip()"
description: "skips nlines for the current program and updates th"
weight: 318
draft: false
---

## Purpose

`sys.skip()` skips nlines for the current program and updates the current line number counter for the current device.

## Usage

```text
retcode = sys.skip(nlines);



or



sys.skip(nlines);
```

## Arguments

integer nlines;

nlines is the number of lines that you want to skip.

## Returns

0 Normal return
- `-1 Error` — nskips <= 0 - And NO action is taken.
For this PCL, the return code is not really very useful,
but it is there.

## Where Used

`sys.skip()` is usually used with Control Break PCLS.

## Example

```text
if (sys.get_linediff())
     sys.skip(sys.get_linediff() + 1);
```

## Description

`sys.skip()` is used mainly by scrolling programs to skip over nested programs. It can, however, be used by programs that do not print anything. If used this way, programs that are called by the non-printing program probably use [`sys.get_linenum()`]({{< ref "getlinenum.md" >}}) to set $row_ofst or sys.page_ofst.

If nlines is great enough to pass the physical end of page for the current device, then it acts EXACTLY like a call to [`sys.page()`]({{< ref "page.md" >}}). Likewise, if it is great enough to pass the logical end of page for a scrolling program then it will also act EXACTLY like [`sys.page()`]({{< ref "page.md" >}}). In these cases ALL cautions that pertain to [`sys.page()`]({{< ref "page.md" >}}) also pertain to `sys.skip()`.

When used by programs that do not print, all `sys.skip()` does is update the current line number for the current device. The current linenumber is updated based on the position of the last printed item by any program using that device, not necessarily the highest line number used by that device.

When [`sys.page()`]({{< ref "page.md" >}}) is called from a program that does print, then the current linenumber is updated based on the last item to print for the current program.

When called from a scrolling program, after updating the current line number for the current device, 4C updates the remaining lines of the current page with their new positions. Only lines that have not yet printed are updated. This may change the number of records that 4C can actually print on a logical page for the scrolling program. Of course, if it changes it, it will change it to a smaller number.

## Bugs/Features/Comments

If used in scrolling screens, `sys.skip()` is unpredictable. If used in the Program DrProc PCL and this causes a Page Break, then the DrProc PCL will execute again with the same rcd.

## See Also

[`sys.page()`]({{< ref "page.md" >}}) [`sys.end_page()`]({{< ref "endpage.md" >}}) [`sys.exit_page()`]({{< ref "exitpage.md" >}}) [`sys.page_isfull()`]({{< ref "pageisfull.md" >}}) [`sys.get_pagediff()`]({{< ref "getpagediff.md" >}}) [`sys.get_linediff()`]({{< ref "getlinediff.md" >}})

Back to Top

