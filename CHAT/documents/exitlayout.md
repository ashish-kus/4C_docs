---
title: "sys.exit_layout()"
description: "exits all programs in the current layout"
weight: 92
draft: false
---

## Purpose

`sys.exit_layout()` exits all programs in the current layout.

## Usage

```text
sys.exit_layout();
```

## Arguments

This PCL takes no arguments.

## Returns

- `0` — OK
- `-1` — Current program is not a screen program.

## Where Used

`sys.exit_layout()` can be called from a ScreenProg only.

## Description

`sys.exit_layout()` exits all programs in the same layout as the current ScreenProg. If the current program is not s ScreenProg, then `sys.exit_layout()` returns -1.

## Bugs/Features/Comments

Programs exited using `sys.exit_layout()` will have an exit code of -3.

## See Also

[`sys.exit_prog()`]({{< ref "exitprog.md" >}})

[`sys.end_prog()`]({{< ref "endprog.md" >}})

Back to Top

## See Also

- [sys.exit_prog()]({{< ref "exitprog.md" >}})
- [sys.end_prog()]({{< ref "endprog.md" >}})

