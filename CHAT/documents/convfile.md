---
title: "sys.conv_file()"
description: "converts data from the fields of on"
weight: 45
draft: false
---

## Purpose

`sys.conv_file()` converts data from the fields of one file to the fields of another.

## Usage

```text
sys.conv_file(<fromasfile>,<toasfile>);
```

## Arguments

- `asfile <frmoasfile>` — The asfile name of the file to convert from.
- `asfile <toasfile>` — The asfile name of the file to convert to.

## Returns

None

## Where Used

`sys.conv_file()` can be called from anywhere.

## Example

```text
The bootstrap program sys.prog.exp.1 uses sys.conv_file()
in writing the sys.prog_exp file.
Here is the code that converts a sys.dpy_field.x rcd to
a sys.prog_exp rcd.




/*
 * Add one rcd to sys.prog_exp using
 * the sys.dpy_field.x rcd
 */
copydf();
sys.read_file(sys.prog_exp,F_ADD);
sys.conv_file(dfx,sys.prog_exp);
sys.upd_file(sys.prog_exp);
```

## Description

`sys.conv_file()` can be used to convert one rcd format to another. 4C does this conversion by first blocking the `<fromasfile>` into a rcd buffer as if it were going to write it, but without writing it. It then deblocks that rcd as if the `<toasfile>` had just read it. The 2 rcd formats need to be compatible. Thus it is possible to convert a FixSeq rcd with 2 x(16) fields to a FixSeq rcd with 1 x(32) field.

## Bugs/Features/Comments

You MUST make sure that the record layouts being converted are compatible.

## See Also

[`sys.copy_data()`]({{< ref "copydata.md" >}})

[`sys.copy_file()`]({{< ref "copyfile.md" >}})

Back to Top

## See Also

- [sys.copy_data()]({{< ref "copydata.md" >}})
- [sys.copy_file()]({{< ref "copyfile.md" >}})

