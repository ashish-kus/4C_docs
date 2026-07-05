---
title: "sys.dr_setcb()"
description: "activates a CB for either DRSELECT processin"
weight: 73
draft: false
---

## Purpose

`sys.dr_setcb()` activates a CB for either DRSELECT processing or for DRPROC processing.

## Usage

```text
sys.dr_setcb(cbname,flag);
```

## Arguments

integer cbname

cbname is the name of a CB defined for this program.

integer flag

flag can be CB_DRSEL or CB_DRPROC only

## Returns

- `0` — Normal
- `-1` — No such CB or Not in the DRINIT PCL of a driver.

## Where Used

`sys.dr_setcb()` can be called only from the DRINIT state.

## Example

```text
sys.dr_setcb(PROGRAM1,CB_DRPROC);
```

## Description

`sys.dr_setcb()` activates the specified CB for either DRSELECT processing or for DRPROC processing. This routine must be called in order to activate a CB for a driver. sys.dr_setcb can only be called from the DRINIT PCL of a driver. This routine can be called more than once in order to activate multiple CBs. When more than 1 CB are active, they are always processed in the the same order as the `sys.dr_setcb()` calls. Also, they are completely independant of one another.

## Bugs/Features/Comments

Currently there is no automatic way of setting a CB for a driver. This should be added to the bootstraps.

## See Also

[`sys.cb_select()`]({{< ref "cbselect.md" >}})

Back to Top

## See Also

- [sys.cb_select()]({{< ref "cbselect.md" >}})

