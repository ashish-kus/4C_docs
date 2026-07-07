---
title: "sys.dr_delete()"
description: "deletes one rcd from the tmp driver fil"
weight: 60
draft: false
---

## Purpose

`sys.dr_delete()` deletes one rcd from the tmp driver file

## Usage

```text
sys.dr_delete();
```

## Arguments

None

## Returns

- `0` — OK
- `-1` — Error

## Where Used

`sys.dr_delete()` can be called by an application that is doing it's own `<delete>` processing. It should not be called by an application that is using default 4C delete processing.

## Example

```text
The bootstrap program, sltree.fm, does it's own delete processing
since sometimes deleting a single entry needs to delete more than one
driver rcd.
```

## Description

An scrolling 4C program that does it's own processing for delete, will need to call `sys.dr_delete()` in order to delete appropriate rcds from the tmp driver file. The fields in main driver file need to have the correct values set in order for `sys.dr_delete()` to work correctly. `sys.dr_delete()` deletes only 1 rcd from the tmp driver file. It does not delete anything from any other files.

Requirements

`sys.dr_delete()` requires 4CSrvr version 4.6.1 or higher.

## Bugs/Features/Comments

This is a fairly specialized SysPCL. Be sure your application needs it before using it.

`sys.dr_delete()` will fail if you have changed any of the sort fields in the main driver file. Not sure if this can or should be fixed or not.

## See Also

[`sys.dr_update()`]({{< ref "drupdate.md" >}})

[`sys.set_droption()`]({{< ref "setdroption.md" >}})

[`sys.dr_renumber()`]({{< ref "drrenumber.md" >}})

Back to Top

## See Also

- [sys.dr_update()]({{< ref "drupdate.md" >}})
- [sys.set_droption()]({{< ref "setdroption.md" >}})
- [sys.dr_renumber()]({{< ref "drrenumber.md" >}})

