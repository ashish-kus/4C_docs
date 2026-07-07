---
title: "min()"
description: "returns the minimum float/integer of its arguments"
weight: 224
draft: false
---

## Purpose

`min()` returns the minimum float/integer of its arguments.

## Usage

```text
minval = min(<arg1> [,<arg2> [,..., [<arg16>] ] ... ]);
```

## Arguments

- `float <arg1>-<arg16>` — The numerics to compare and get the min of.
You can pass integers instead of floats because 4C will do
the numeric conversions.

## Returns

- `float <minval>` — The minimum of all passed args.
4C returns a float, but you can assign this to an integer
instead since 4C will convert it.

## Where Used

`min()` can be called from anywhere.

## Description

`min()` returns the minimum float/integer of its arguments. `min()` can be used with integers, dates, times, and floats.

Arguments can be passed as integers/dates/times instead of floats because 4C will do the numeric conversions.

This type conversion works on returns also.

## Bugs/Features/Comments

Prior to 4C Server version 4.4.7 `min()` is not reliable. Do not use `min()` unless your server is version 4.4.7 or higher.

Prior to 4C Server version 4.4.7, `min()` only works with float args. You will get a compile error if you try to use it with other types of args.

## See Also

[`max()`]({{< ref "max.md" >}}) [`strmax()`]({{< ref "strmax.md" >}}) [`strmin()`]({{< ref "strmin.md" >}})

Back to Top

