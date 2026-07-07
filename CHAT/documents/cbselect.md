---
title: "sys.cb_select()"
description: "explicitly cb selects the curren"
weight: 31
draft: false
---

## Purpose

`sys.cb_select()` explicitly cb selects the current driver rcd for the current CB.

## Usage

```text
sys.cb_select();
```

## Arguments

NONE

## Returns

- `0` — Normal
- `-1` — No current CB or CBSTATE not CBSELECT

## Where Used

`sys.cb_select()` can only be called from the CBSELECT state of control break processing.

## Example

```text
if (sys.pr_catg == "system")
     sys.cb_select();
```

## Description

The `sys.cb_select()` PCL explicitly cb selects a rcd ONLY for the current CB. The only place that this PCL can be called is from the CBSELECT PCL of any ACTIVE CB. If an active CB does not have a CBSELECT PCL, then ALL rcds are cb selected for that CB. If an active PCL has a CBSELECT PCL, then in order to cb select a rcd, the CBSELECT PCL must call `sys.cb_select()`.

For a rcd to be cb selected means that its values will be included in any CB Tot Vars and it can trigger the CBSGROUP processing. It does not affect the driver processing in any other way. When more than one CB is active, each CB can cb select different rcds.

## See Also

[`sys.dr_setcb()`]({{< ref "drsetcb.md" >}})

Back to Top

## See Also

- [sys.dr_setcb()]({{< ref "drsetcb.md" >}})

