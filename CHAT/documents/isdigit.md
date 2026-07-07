---
title: "isdigit()"
description: "indicates if <str> is all digits or not"
weight: 198
draft: false
---

## Purpose

`isdigit()` indicates if `<str>` is all digits or not.

## Usage

```text
ret = isdigit(<str>);
```

## Arguments

- `alpha <str>` — The alpha var to check.

## Returns

integer `<ret>`
- `0` — `<str>` is not composed of ONLY digits.
- `1` — `<str>` is composed of ONLY digits.

## Where Used

`isdigit()` can be called from anywhere.

## Description

`isdigit()` returns 1 if `<str>` is composed of ONLY digits. If there are any characters other than 0-9, then `isdigit()` returns 0. If `<str>` is NULL, then `isdigit()` will return 1 because there are no non-digit characters.

## See Also

[`islower()`]({{< ref "islower.md" >}}) [`isupper()`]({{< ref "isupper.md" >}}) [`toupper()`]({{< ref "toupper.md" >}})

Back to Top

