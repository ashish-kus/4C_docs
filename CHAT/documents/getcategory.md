---
title: "sys.get_category()"
description: "returns the category of the current program"
weight: 119
draft: false
---

## Purpose

`sys.get_category()` returns the category of the current program.

## Usage

```text
catg = sys.get_category();
```

## Arguments

None

## Returns

alpha `<catg>`

The current programs category as defined in the sys.pr_catg field of sys.program.

## Where Used

`sys.get_category()` can be called from anywhere.

## Description

`sys.get_category()` returns the category of the current program. The programs category is defined in the file sys.program by the field sys.pr_catg. The programs category is not compiled into the XLSEQFILE, so if you change it, the program does not need to be re-compiled for `sys.get_category()` to return the new value.

## See Also

[`sys.get_field()`]({{< ref "getfield.md" >}}) [`sys.get_program()`]({{< ref "getprogram.md" >}})

Back to Top

