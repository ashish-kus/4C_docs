---
title: "sys.get_spsfmax()"
description: "returns the max sp slot fault value"
weight: 183
draft: false
---

## Purpose

`sys.get_spsfmax()` returns the max sp slot fault value.

## Usage

```text
spsfmax = sys.get_spsfmax();
```

## Arguments

None

## Returns

- `integer <spsfmax>` — The max number of programs allocated in non-shared memory
instead of shared memory because there were no available sp slots
when a pogram was being read into shared memory.

## Where Used

`sys.get_spsfmax()` can be called from anywhere. It is used in the system program sys.mem.summary to help in configuring the system.

`sys.get_spsfmax()` is meant for INTERNAL USE ONLY.

## Example

```text
The following stmt is the StFld PCL for spsfmax in the program
sys.mem.summary.




spsfmax = sys.get_spsfmax();
```

## Description

`sys.get_spsfmax()` returns the max sp slot fault value. This is the maximum number of programs allocated in non-shared memory instead of shared memory at one time because no sp slot was available when a programs needed it. sp stands for an internal structure named sys_prog.

## Bugs/Features/Comments

If when running the sys.mem.summary program you usually have Program Slot Faults, you probably need to increase the number of programs specified in the XLCONFIG file.

## See Also

[`sys.get_sflmfmax()`]({{< ref "getsflmfmax.md" >}}) [`sys.get_sflsfmax()`]({{< ref "getsflsfmax.md" >}}) [`sys.get_spmfmax()`]({{< ref "getspmfmax.md" >}})

Back to Top

