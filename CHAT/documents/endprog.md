---
title: "sys.end_prog()"
description: "ends the current 4C progra"
weight: 83
draft: false
---

## Purpose

`sys.end_prog()` ends the current 4C program

## Usage

```text
sys.end_prog();
```

## Arguments

No arguments

## Returns

No Returns

## Where Used

`sys.end_prog()` can be called from anywhere.

## Description

`sys.end_prog()` exits all current processing in the current 4C program. This includes but is not limited to PCLs, drivers, dpy fields. The program will still run the ExitPCL.

## See Also

[`sys.exit_prog()`]({{< ref "exitprog.md" >}})

Back to Top

## See Also

- [sys.exit_prog()]({{< ref "exitprog.md" >}})

