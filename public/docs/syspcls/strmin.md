# strmin()

## Purpose

`strmin()` returns the minimum alpha of its arguments.

## Usage

```text
minval = strmin(<arg1> [,<arg2> [,..., [<arg16>] ] ... ]);
```

## Arguments

- `alpha <arg1>-<arg16>` — The alphas to compare and get the min of.

## Returns

- `alpha <minval>` — The minimum of all passed args.

## Where Used

`strmin()` can be called from anywhere.

## Description

`strmin()` returns the minimum alpha of its arguments. The comparison is a standard lexical comparison.

## Bugs/Features/Comments

Prior to 4C Server version 4.4.7 `strmin()` is not reliable. Do not use `strmin()` unless your server is version 4.4.7 or higher.

## See Also

[`max()`]({{< ref "max.md" >}}) [`min()`]({{< ref "min.md" >}}) [`strmax()`]({{< ref "strmax.md" >}}) [`strlen()`]({{< ref "strlen.md" >}})

Back to Top


