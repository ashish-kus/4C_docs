---
title: "strmax()"
description: "returns the maximum alpha of its arguments"
weight: 331
draft: false
---

## Purpose

`strmax()` returns the maximum alpha of its arguments.

## Usage

```text
maxval = strmax(<arg1> [,<arg2> [,..., [<arg16>] ] ... ]);
```

## Arguments

- `alpha <arg1>-<arg16>` — The alphas to compare and get the max of.

## Returns

- `alpha <maxval>` — The maximum of all passed args.

## Where Used

`strmax()` can be called from anywhere.

## Description

`strmax()` returns the maximum alpha of its arguments. The comparison is a standard lexical comparison.

## Bugs/Features/Comments

Prior to 4C Server version 4.4.7 `strmax()` is not reliable. Do not use `strmax()` unless your server is version 4.4.7 or higher.

## See Also

[`max()`]({{< ref "max.md" >}}) [`min()`]({{< ref "min.md" >}}) [`strmin()`]({{< ref "strmin.md" >}}) [`strlen()`]({{< ref "strlen.md" >}})

Back to Top

