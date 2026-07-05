---
title: "sys.exit_prog()"
description: "exits the current program"
weight: 94
draft: false
---

## Purpose

`sys.exit_prog()` exits the current program.

## Usage

```text
sys.exit_prog(<exitcode>);
```

## Arguments

- `integer <exitcode>` — The value to set into $wexit_code

## Returns

No Returns

## Where Used

`sys.exit_prog()` can be called from anywhere.

## Description

`sys.exit_prog()` ends all processing in the current program, and sets $wexit_code to `<exitcode>`

## See Also

[`sys.end_prog()`]({{< ref "endprog.md" >}})

Back to Top

## See Also

- [sys.end_prog()]({{< ref "endprog.md" >}})

