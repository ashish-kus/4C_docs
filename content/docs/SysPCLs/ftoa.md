---
title: "ftoa()"
description: "converts a float field to an alpha field"
weight: 114
draft: false
---

## Purpose

`ftoa()` converts a float field to an alpha field, and returns the alpha field.

## Usage

```text
aval = ftoa(fval);
```

## Arguments

float fval;

## Returns

alpha aval;

There are no error returns from this PCL.

## Where Used

`ftoa()` can be called from anywhere.

## Example

```text
sys.err_msg("fl =",ftoa(fl));
```

## Description

This PCL takes one float argument and converts it to an alpha, returning the alpha. It is mostly useful in converting float fields to alpha for display in error messages and in passing arguments.

## Bugs/Features/Comments

`ftoa()` does not allow specifying a format, but [`sys.fmt_float()`]({{< ref "fmtfloat.md" >}}) can be called if this is necessary.

## See Also

[`atodate()`]({{< ref "atodate.md" >}}) [`itoa()`]({{< ref "itoa.md" >}}) [`atoi()`]({{< ref "atoi.md" >}}) [`atof()`]({{< ref "atof.md" >}}) [`sys.fmt_alpha()`]({{< ref "fmtalpha.md" >}}) [`sys.fmt_choice()`]({{< ref "fmtchoice.md" >}}) [`sys.fmt_date()`]({{< ref "fmtdate.md" >}}) [`sys.fmt_float()`]({{< ref "fmtfloat.md" >}}) [`sys.fmt_integer()`]({{< ref "fmtinteger.md" >}}) [`sys.fmt_time()`]({{< ref "fmttime.md" >}})

Back to Top

