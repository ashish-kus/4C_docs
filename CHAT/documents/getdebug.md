---
title: "sys.get_debug()"
description: "returns either ON or OFF indicatin"
weight: 129
draft: false
---

## Purpose

`sys.get_debug()` returns either "ON" or "OFF" indicating whether the 4C debugger is currently running or not.

## Usage

```text
dbgmode = sys.get_debug();
```

## Arguments

None

## Returns

- `"ON"` — Debugger is active
- `"OFF` — Debugger is not active.

## Where Used

`sys.get_debug()` can be called from anywhere. It is called in the bootstrap program sys.prog.mstr in order to display it on the screen.

## Example

```text
The following stmt is from the bootstrap program sys.prog.mstr.
It is in the Init PCL.




sys.uscr_dbflag = sys.get_debug();
```

## Description

`sys.get_debug()` returns either "ON" or "OFF" indicating whether the 4C debugger is currently running or not.

## See Also

[`sys.set_debug()`]({{< ref "setdebug.md" >}})

Back to Top

