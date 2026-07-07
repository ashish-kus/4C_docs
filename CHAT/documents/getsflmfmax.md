---
title: "sys.get_sflmfmax()"
description: "returns the max sfl mem fault value"
weight: 177
draft: false
---

## Purpose

`sys.get_sflmfmax()` returns the max sfl mem fault value.

## Usage

```text
sflmfmax = sys.get_sflmfmax();
```

## Arguments

None

## Returns

- `integer <sflmfmax>` — The max amount memory allocated in non-shared memory
instead of shared memory because shared memory could not be allocated
when a file def was being read into shared memory.

## Where Used

`sys.get_sflmfmax()` can be called from anywhere. It is used in the system program sys.mem.summary to help in configuring the system.

This is meant for INTERNAL USE ONLY.

## Example

```text
The following stmt is the StFld PCL for sflmfmax in the program
sys.mem.summary.




sflmfmax = sys.get_sflmfmax();
```

## Description

`sys.get_sflmfmax()` returns the max sfl mem fault value. This is the maximum amount of memory allocated in non-shared memory instead of shared memory at one time because shared memory was not available when a file needed it. sfl stands for an internal structure named sys_file.

## Bugs/Features/Comments

If when running the sys.mem.summary program you usually have File Mem Faults, you need to either increase the amount of system memory specified in the XLCONFIG file, or lower the number of files.

## See Also

[`sys.get_sflsfmax()`]({{< ref "getsflsfmax.md" >}}) [`sys.get_spmfmax()`]({{< ref "getspmfmax.md" >}}) [`sys.get_spsfmax()`]({{< ref "getspsfmax.md" >}})

Back to Top

