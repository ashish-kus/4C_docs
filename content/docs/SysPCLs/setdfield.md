---
title: "sys.set_dfield()"
description: "allows you to associate a data fiel"
weight: 282
draft: false
---

## Purpose

`sys.set_dfield()` allows you to associate a data field with a display field at run time.

## Usage

```text
ret = sys.set_dfield(<LABEL>,<field>);
```

## Arguments

- `<LABEL>` — a display field label
- `<field>` — a field name, not a C DEFINE
`<field>` can be any data type

## Returns

- `0` — OK
- `-1` — no display field with label `<LABEL>`

## Where Used

`sys.set_dfield()` can be called from anywhere, but makes most sense in the Init PCL.

## Description

`sys.set_dfield()` is used to associate a program variable with a display field. It can be used to allow the same program to display and input different fields depending on some program variable. The display field and the program variable that are associated by `sys.set_dfield()` must be of the same storage type. They should also be the same size if alpha. They should also be able to use the same help message since that is what they get.

## Bugs/Features/Comments

`<field>` can be any data type, but it must be able to use the format defined for the display field with the label `<LABEL>`, and it must be able to use the help message of that field.

There is no special compile time checking done to insure that they  are compatible.

## See Also

[`sys.share_field()`]({{< ref "sharefield.md" >}}) [`sys.rset_dfield()`]({{< ref "rsetdfield.md" >}})

Back to Top

