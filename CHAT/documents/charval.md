---
title: "sys.char_val()"
description: "converts an integer to a"
weight: 32
draft: false
---

## Purpose

`sys.char_val()` converts an integer to an ascii character.

## Usage

```text
avar = sys.char_val(<ival>);
```

## Arguments

- `<ival>` — The integer to convert to ascii.

## Returns

- `<avar>` — A one character string.
There are no error returns.
`<ival>` will always be converted, even if it is a
non-printing character.

## Where Used

`sys.char_val()` can be called from anywhere.

## Example

```text
/* Convert 1 char to lower case */
if ((avar(i,i) >= 'A') && (avar(i,i) <= 'Z'))
    avar(i,i) = sys.char_val(sys.int_val(avar(i,i))+32);
```

## Description

`sys.char_val()` converts an integer to an ascii character. The return value is always length 1.

## Bugs/Features/Comments

`<ival>` will always be converted, even if it is a non-printing character.

## See Also

[`sys.int_val()`]({{< ref "intval.md" >}})

Back to Top

## See Also

- [sys.int_val()]({{< ref "intval.md" >}})

