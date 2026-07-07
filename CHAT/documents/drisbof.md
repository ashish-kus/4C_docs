---
title: "sys.dr_isbof()"
description: "indicates wether the current driver is at the beginning o"
weight: 65
draft: false
---

## Purpose

`sys.dr_isbof()` indicates wether the current driver is at the beginning of file or not.

## Usage

```text
if (sys.dr_isbof())
     dosomething();
```

## Arguments

None

## Returns

- `1` — Current driver is at beginning of file.
- `0` — Current driver is not at beginning of file.
- `-1` — There is no current driver.

## Where Used

`sys.dr_isbof()` can be called from anywhere as long as there is a current driver.

## Example

```text
if (sys.dr_isbof())
     setdefaults();
```

## Description

`sys.dr_isbof()` is called to determine if the current driver is at the beginning of file or not. If the driver is currently processing the first selected record then it returns 1. Otherwise it returns 0. If there is no current driver, `sys.dr_isbof()` will return -1.

In the SPagePCL, if the next line to display is the first line, then `sys.dr_isbof()` will return 1. Otherwise `sys.dr_isbof()` will return 0.

In the DrProcPCL, the SFldlpPCL, any field PCL, and the EFldlpPCL, if the current record being processed is the first record, then `sys.dr_isbof()` will return 1. Otherwise `sys.dr_isbof()` will return 0.

The EPagePCL cannot be used to call `sys.dr_isbof()`.

`sys.dr_isbof()` can be used instead of checking if dr_sequence is equal to 1.

## See Also

[`sys.dr_iseof()`]({{< ref "driseof.md" >}})

Back to Top

## See Also

- [sys.dr_iseof()]({{< ref "driseof.md" >}})

