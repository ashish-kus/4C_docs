---
title: "sys.page()"
description: "causes the current device to go to top of form"
weight: 233
draft: false
---

## Purpose

`sys.page()` causes the current device to go to top of form.

## Usage

```text
sys.page([<nskips>]);
```

## Arguments

- `integer <nskips>` — This is an optional argument that will
cause sys.page() to skip `<nskips>` lines instead of
doing a page break.

## Returns

None

## Where Used

`sys.page()` is normally called from a StartPage PCL of a Scrolling rpt program, or from an Init PCL of a non scrolling rpt program, and is usually called after a call [`sys.page_isfull()`]({{< ref "pageisfull.md" >}}). It may also be called during EndPage PCL processing.

## Example

```text
if (sys.page_isfull())
     sys.page();
```

## Description

`sys.page()` causes the current device to go to top of form, or to print `<skips>` blank lines. For a crt, this means prompting to continue, and then clearing the current window of the crt only. For other devices, this means putting out a form feed character, or enough blank lines to reach the next top of form. The current page number of the device is incremented. If the current device is already at the top of form, then `sys.page()` does not do anything. After a call to `sys.page()`, all calls to [`sys.is_tof()`]({{< ref "istof.md" >}}) will return 1 until something has printed on the new page, or until [`sys.skip()`]({{< ref "skip.md" >}}) has been called. After that, [`sys.is_tof()`]({{< ref "istof.md" >}}) will return 0 until the next `sys.page()` call.

The `<nskips>` can be used to make label printing and things like that easier. Other than printing `<nskips>` blank lines, everything else acts the same. The internal page counter is incremented etc.

This PCL acts only on the current device. The current device is usually the device defined for the current program. However, if the current program has not finished executing the InitPCL, or the current program has already started executing the EndPCL, then the current device is the device used by the most recently active program that has made it past the InitPCL, but not as far as the EndPCL.

This PCL can be called from scrolling or from non-scrolling programs, from programs that print and from those that do not print.

From non-scrolling programs, the most likely place to call `sys.page()` is from the InitPCL, the EndPCL, or the ExitPCL. If called at any of these places, you should make sure that the device has been opened by some calling program. It could also be called from the SFldLpPCL or the EFldLpPCL. It does not make very much sense to call `sys.page()` from any of the fld PCL statements.

`sys.page()` could be called from a non-printing program almost anywhere that that program would be pushing a different program that prints. Once again, you would need to be sure that the non-printing program had the device open.

The most common use of `sys.page()` is in scrolling programs. Here, the most likely place to call it is from the SPagePCL, or the EPage PCL. When called from either of these two places there are no funny timing considerations. If called from other places, there are timing issues to consider. First, it should not be called from the SFldLpPCL, or any field PCL. The two other likely places to call `sys.page()` from are the EFldLp PCL and the DrProcPCL. If called from either of these two PCLs, 4C will set the next driver state to be StartPage. The next action 4C will take after completing the current PCL will be to execute the SPagePCL. The current PCL, including all nested PCLs, will execute until finished, but no further printing of records will occur on the current page. If this is the DrProc PCL, this means that the current record has not been printed yet, and will be printed on the next page. In order to accomplish this, 4C sets the next record ptr to the current record. In other words, the next record processed is the current record, and the DrProc PCL will actually execute twice for this record. This must be kept in mind when calculating totals and things like that in the DrProcPCL. If you are calculating totals in the DrProc PCL, and you call `sys.page()` also, you should exit the PCL with a return statement before updating your totals.

## Bugs/Features/Comments

If called from the Program DrProc PCL, the DrProc PCL will execute a 2nd time for the current rcd. Avoid this by using CB PCLS to page.

## See Also

[`sys.skip()`]({{< ref "skip.md" >}}) [`sys.end_page()`]({{< ref "endpage.md" >}}) [`sys.exit_page()`]({{< ref "exitpage.md" >}}) [`sys.page_isfull()`]({{< ref "pageisfull.md" >}}) [`sys.get_pagediff()`]({{< ref "getpagediff.md" >}}) [`sys.get_linediff()`]({{< ref "getlinediff.md" >}}) [`sys.is_tof()`]({{< ref "istof.md" >}})

Back to Top

