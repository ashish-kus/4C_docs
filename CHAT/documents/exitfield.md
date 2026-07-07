---
title: "sys.exit_field()"
description: "exits the processing of the current display fiel"
weight: 90
draft: false
---

## Purpose

`sys.exit_field()` exits the processing of the current display field

## Usage

```text
sys.exit_field([<dfldidx>]);
```

## Arguments

- `integer <dfldidx>` — The index of the display field to process
next.

## Returns

Normally there is no return, since sys.exit_field() will
exit the current PCL
- `-1` — No current DFld

## Where Used

`sys.exit_field()` can be called anytime a display field is being processed.

## Example

```text
One way sys.exit_field() is used is to skip processing
of a dfld when certain conditions exist.
For this purpose, sys.exit_field() would be called from the SFldPCL.
```

## Description

`sys.exit_field()` exits the processing of the current display field. If there is no current display field, then it does nothing and returns If you pass `<dfldidx>` as an argument, then the specified DFld will be the next one to process. If no `<dfldidx>` is passed, then the next field to process will be the next one defined in the program. -1. If there is an EFldPCL it will not be executed. The differences between `sys.exit_field()` and [`sys.end_field()`]({{< ref "endfield.md" >}}) are:

`sys.exit_field()` allows you to specify the next DFld to be processed.

`sys.exit_field()` will not execute the EFldPCL on the current DFld.

## See Also

`sys.exit_field()`

Back to Top

## See Also

- [sys.exit_field()]({{< ref "exitfield.md" >}})

