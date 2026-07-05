# sys.dr_iseof()

## Purpose

`sys.dr_iseof()` indicates wether the current driver is at the end of file or not.

## Usage

```text
if (sys.dr_iseof())
     dosomething();
```

## Arguments

None

## Returns

- `1` — Current driver is at end of file.
- `0` — Current driver is not at end of file.
- `-1` — There is no current driver.

## Where Used

`sys.dr_iseof()` can be called from anywhere as long as there is a current driver.

## Example

```text
if (sys.dr_iseof())
     printtotals();
```

## Description

`sys.dr_iseof()` is called to determine if the current driver is at the end of file or not. If the driver is currently processing the last selected record then it returns 1. Otherwise it returns 0. If there is no current driver, `sys.dr_iseof()` will return -1.

The SPagePCL cannot be used to call `sys.dr_iseof()`.

In the DrProcPCL, the SFldlpPCL, any field PCL, and the EFldlpPCL, if the current record being processed is the last selected record, then `sys.dr_iseof()` will return 1. Otherwise `sys.dr_iseof()` will return 0.

The EPagePCL can call `sys.dr_iseof()` to determine if the last record on the page is also the last record selected.

`sys.dr_iseof()` can be used instead of checking if dr_sequence is equal to `sys.dr_count()`.

## See Also

[`sys.dr_isbof()`]({{< ref "drisbof.md" >}})

Back to Top

## See Also

- [sys.dr_isbof()]({{< ref "drisbof.md" >}})


