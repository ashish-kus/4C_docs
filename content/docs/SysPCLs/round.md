---
title: "round()"
description: "takes a float arg, and an integer arg"
weight: 261
draft: false
---

## Purpose

`round()` takes a float arg, and an integer arg, returning a rounded float. The original float is left unchanged.

## Usage

```text
flret = round(<fl>,<nplaces>);
```

## Arguments

- `<fl>` — The float that you want to round.
This will be left unchanged.
- `<nplaces>` — The number of decimal places that you want
to round `<fl>` to.
If `<nplaces>` is less than 0, `<fl>` will be rounded
to 0 decimal places.

## Returns

`round()` returns `<fl>` rounded to `<nplaces>` in `<flret>`.

There are no error returns from `round()`.

## Where Used

`round()` can be called from anywhere.

## Example

```text
printtot = round(amount, 2);
```

## Description

`round()` takes a float arg, and an integer arg, returning a rounded float. The original float is left unchanged.

## See Also

Back to Top

