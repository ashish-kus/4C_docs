---
title: "sys.end_cb()"
description: "exits out of the current CB processing"
weight: 79
draft: false
---

## Purpose

`sys.end_cb()` exits out of the current CB processing.

## Usage

```text
sys.end_cb();
```

## Arguments

None

## Returns

- `0` — Normal
- `-1` — No current CB

## Where Used

`sys.end_cb()` can be called from any PCL nested within a CB PCL.

## Example

```text
sys.end_cb();
```

## Description

`sys.end_cb()` exits out of the current CB processing. This means that all PCLs started by the current CB will be exited, and that no new PCLs will be started by the current CB in the CURRENT CB State. `sys.end_cb()` can be used to exit the CBSGROUP, CBEGROUP, CBSELECT, CBBOF, and CBEOF PCLs. CBBOF/CBSGROUP PCLs and CBEGROUP/CBEOF PCLs act as a group, so when the CBBOF PCL calls `sys.end_cb()`, none of the CBSGROUP PCLs will be executed on the cur rcd. Likewise, on EOF, when one of the CBEGROUP PCLs calls `sys.end_cb()`, the CBEOF PCL will not get executed. `sys.end_cb()` only acts on the current CB. If there are more than one active CB for a driver, calling `sys.end_cb()` only exits the current CB. All others will still process. There is no difference between `sys.end_cb()` and [`sys.exit_cb()`]({{< ref "exitcb.md" >}}).

## Bugs/Features/Comments

`sys.end_cb()` is no different than [`sys.exit_cb()`]({{< ref "exitcb.md" >}}). In the future, they may be different.

## See Also

[`sys.exit_cb()`]({{< ref "exitcb.md" >}})

Back to Top

## See Also

- [sys.exit_cb()]({{< ref "exitcb.md" >}})

