---
title: "sys.exit_page()"
description: "sets the next driver state of the program driver t"
weight: 93
draft: false
---

## Purpose

`sys.exit_page()` sets the next driver state of the program driver to be STARTPAGE.

## Usage

```text
retcode = sys.exit_page();



or



sys.exit_page();
```

## Arguments

None

## Returns

- `0` — Normal return
- `-1` — Program is not a scrolling program

## Where Used

`sys.exir_page()` can be called only while there is a a program driver being processed. The program driver should be past the DRSSELEOF state.

## Example

```text
if (newcode != oldcode) {
     sys.exit_page();
     return;


}
```

## Description

`sys.exit_page()` is used to change the driver state of the program driver. The next state is set to be STARTPAGE. All current executing PCLs will continue executing until finished. The next action started by the program driver will be to run the SPagePCL. It only makes sense to call this PCL during the DrProcPCL or during the printing of the current record. If called from anywhere else, the driver state does not change.

If called from the DrProcPCL, the record will not print on the current logical page. It will print on the next logical page. The DrProcPCL will execute twice for the same record when `sys.exit_page()` is called from there.

You may want to call `sys.exit_page()` in order to get your program to print differently than the normal 4C way. This could mean organizing several logical pages on the same page, each with headers, or forcing a page break when some values change or something like that.

The only difference between [`sys.end_page()`]({{< ref "endpage.md" >}}) and `sys.exit_page()` is that [`sys.end_page()`]({{< ref "endpage.md" >}}) will execute the EPagePCL before entering the next StartPage driver state. `sys.exit_page()` does not execute the EPagePCL before entering the StartPage driver state.

## Bugs/Features/Comments

There is no check to make sure that the program driver is past the DRSELEOF state.

When `sys.dr_exitpage()` is called from the DRPROC PCL, this rcd will be processed twice and the DRPROC PCL will be run twice on this rcd. It is better to avoid calling `sys.dr_exitpage()` from the DRPROC PCL. Call it from one of the CB PCLS and no PCL will be executed twice for the same rcd.

## See Also

[`sys.end_page()`]({{< ref "endpage.md" >}})

[`sys.page()`]({{< ref "page.md" >}})

Back to Top

## See Also

- [sys.end_page() sys.page()]({{< ref "endpage.md" >}})
- [sys.page()]({{< ref "page.md" >}})

