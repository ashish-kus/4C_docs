---
title: "max()"
description: "returns the maximum float/integer of its arguments"
weight: 221
draft: false
---

## Purpose

`max()` returns the maximum float/integer of its arguments.

## Usage

```text
maxval = max(<arg1> [,<arg2> [,..., [<arg16>] ] ... ]);
```

## Arguments

- `float <arg1>-<arg16>` — The numerics to compare and get the max of.

## Returns

- `float <maxval>` — The maximum of all passed args.

## Where Used

`max()` can be called from anywhere.

## Description

`max()` returns the maximum float/integer of its arguments. `max()` can be used with integers, dates, times, and floats.

Arguments can be passed as integers/dates/times instead of floats because 4C will do the numeric conversions.

This type conversion works on returns also.

## Bugs/Features/Comments

Prior to 4C Server version 4.4.7 `max()` is not reliable. Do not use `max()` unless your server is version 4.4.7 or higher.

Prior to 4C Server version 4.4.7, `max()` only works with float args. You will get a compile error if you try to use it with other types of args.

## See Also

[`min()`]({{< ref "min.md" >}}) [`strmax()`]({{< ref "strmax.md" >}}) [`strmin()`]({{< ref "strmin.md" >}})

Back to Top

