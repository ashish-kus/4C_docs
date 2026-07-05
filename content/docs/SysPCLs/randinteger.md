---
title: "sys.rand_integer()"
description: "returns a random integer >= lowval and <= highva"
weight: 250
draft: false
---

## Purpose

`sys.rand_integer()` returns a random integer >= lowval and <= highval

## Usage

```text
ival = sys.rand_integer(lowval,highval);
```

## Arguments

- `integer/int64` — lowval
- `integer/int64` — highval

## Returns

- `integer/int64` — ival

## Where Used

`sys.rand_integer()` can be called from anywhere.

## Description

`sys.rand_integer()` returns a random integer between the 2 passed in values. On error -1 is returns and sys_ret is set to SYSRET_ERROR. The values passed in can be either 32bit integer values or 64bit integer values

Requirements

## See Also

[`sys.rand_string()`]({{< ref "randstring.md" >}})

mathfunc

Back to Top

## See Also

- [sys.rand_string() mathfunc Back to Top]({{< ref "randstring.md" >}})
- [mathfunc]({{< ref "mathfunc.md" >}})

