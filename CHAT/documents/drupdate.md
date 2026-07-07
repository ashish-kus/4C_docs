---
title: "sys.dr_update()"
description: "updates the fields in a driver temp file"
weight: 76
draft: false
---

## Purpose

`sys.dr_update()` updates the fields in a driver temp file.

## Usage

```text
sys.dr_update();
```

## Arguments

None

## Returns

- `0` — OK
- `-1` — Error

## Where Used

`sys.dr_update()` can be called by the application any time there is a current 4c driver record.

## Description

`sys.dr_update()` is useful to update fields in a driver temp file that have been dr included in the driver. It does not modify the driver file itself, only the temp file used by the driver.

Requirements

`sys.dr_update()` requires the 4c server to be at version 5.6.8 or higher.

## See Also

`sys.dr_update()`

Back to Top

## See Also

- [sys.dr_update()]({{< ref "drupdate.md" >}})

