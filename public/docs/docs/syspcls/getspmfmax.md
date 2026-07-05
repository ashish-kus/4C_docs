# sys.get_spmfmax()

## Purpose

`sys.get_spmfmax()` returns the max sp mem fault value.

## Usage

```text
spmfmax = sys.get_spmfmax();
```

## Arguments

None

## Returns

- `integer <spmfmax>` — The max amount memory allocated in non-shared memory
instead of shared memory because shared memory could not be allocated
when a program was being read into shared memory.

## Where Used

`sys.get_spmfmax()` can be called from anywhere. It is used in the system program sys.mem.summary to help in configuring the system.

This is meant for INTERNAL USE ONLY.

## Example

```text
The following stmt is the StFld PCL for spmfmax in the program
sys.mem.summary.




spmfmax = sys.get_spmfmax();
```

## Description

`sys.get_spmfmax()` returns the max sp mem fault value. This is the maximum amount of memory allocated in non-shared memory instead of shared memory at one time because shared memory was not available when a program needed it. sp stands for an internal structure named sys_prog.

## Bugs/Features/Comments

If when running the sys.mem.summary program you usually have Program Mem Faults, you need to either increase the amount of system memory specified in the XLCONFIG file, or lower the number of programs.

## See Also

[`sys.get_sflmfmax()`]({{< ref "getsflmfmax.md" >}}) [`sys.get_sflsfmax()`]({{< ref "getsflsfmax.md" >}}) [`sys.get_spsfmax()`]({{< ref "getspsfmax.md" >}})

Back to Top


