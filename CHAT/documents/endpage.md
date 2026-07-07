---
title: "sys.end_page()"
description: "sets the next driver state of the program driver t"
weight: 82
draft: false
---

## Purpose

`sys.end_page()` sets the next driver state of the program driver to be ENDPAGE.

## Usage

```text
retcode = sys.end_page();



or



sys.end_page();
```

## Arguments

None

## Returns

- `0` — Normal return
- `-1` — Program is not a scrolling program

## Where Used

`sys.end_page()` can be called only while there is a a program driver being processed. The program driver should be past the DRSSELEOF state.

## Example

```text
if (newcode != oldcode) {
     sys.end_page();
     return;


}
```

## Description

`sys.end_page()` is used to change the driver state of the program driver. The next state is set to be ENDPAGE. All current executing PCLs will continue executing until finished. The next action started by the program driver will be to run the EPagePCL. It only makes sense to call this PCL during the DrProcPCL or during the printing of the current record. If called from anywhere else, the driver state does not change.

If called from the DrProcPCL, the record will not print on the current logical page. It will print on the next logical page. The DrProcPCL will execute twice for the same record when `sys.end_page()` is called from there.

You may want to call `sys.end_page()` in order to get your program to print differently than the normal 4C way. This could mean organizing several logical pages on the same page, each with headers, or forcing a page break when some values change or something like that.

The only difference between `sys.end_page()` and [`sys.exit_page()`]({{< ref "exitpage.md" >}}) is that `sys.end_page()` will execute the EPagePCL before entering the next StartPage driver state. [`sys.exit_page()`]({{< ref "exitpage.md" >}}) does not execute the EPagePCL before entering the StartPage driver state.

## Bugs/Features/Comments

There is no check to make sure that the program driver is past the DRSELEOF state.

When `sys.dr_endpage()` is called from the DRPROC PCL, this rcd will be processed twice and the DRPROC PCL will be run twice on this rcd. It is better to avoid calling `sys.dr_endpage()` from the DRPROC PCL. Call it from one of the CB PCLS and no PCL will be executed twice for the same rcd.

## See Also

[`sys.exit_page()`]({{< ref "exitpage.md" >}})

[`sys.page()`]({{< ref "page.md" >}})

Back to Top

## See Also

- [sys.exit_page()]({{< ref "exitpage.md" >}})
- [sys.page()]({{< ref "page.md" >}})

