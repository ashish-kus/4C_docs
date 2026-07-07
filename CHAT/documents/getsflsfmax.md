---
title: "sys.get_sflsfmax()"
description: "returns the max sfl slot fault value"
weight: 178
draft: false
---

## Purpose

`sys.get_sflsfmax()` returns the max sfl slot fault value.

## Usage

```text
sflsfmax = sys.get_sflsfmax();
```

## Arguments

None

## Returns

- `integer <sflsfmax>` — The max number of files allocated in non-shared memory
instead of shared memory because there were no available sfl slots
when a file def was being read into shared memory.

## Where Used

`sys.get_sflsfmax()` can be called from anywhere. It is used in the system program sys.mem.summary to help in configuring the system.

`sys.get_sflsfmax()` is meant for INTERNAL USE ONLY.

## Example

```text
The following stmt is the StFld PCL for sflsfmax in the program
sys.mem.summary.




sflsfmax = sys.get_sflsfmax();
```

## Description

`sys.get_sflsfmax()` returns the max sfl slot fault value. This is the maximum number of files allocated in non-shared memory instead of shared memory at one time because no sfl slot was available when a file needed it. sfl stands for an internal structure named sys_file.

## Bugs/Features/Comments

If when running the sys.mem.summary program you usually have File Slot Faults, you probably need to increase the number of files specified in the XLCONFIG file.

## See Also

[`sys.get_sflmfmax()`]({{< ref "getsflmfmax.md" >}}) [`sys.get_spmfmax()`]({{< ref "getspmfmax.md" >}}) [`sys.get_spsfmax()`]({{< ref "getspsfmax.md" >}})

Back to Top

