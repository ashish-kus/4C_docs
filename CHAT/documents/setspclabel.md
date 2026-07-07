---
title: "sys.set_spclabel()"
description: "allows a program to change th"
weight: 309
draft: false
---

## Purpose

`sys.set_spclabel()` allows a program to change the value of a function key label at run time.

## Usage

```text
ret = sys.set_spclabel(<spcname>,<label>);
```

## Arguments

- `alpha <spcname>` — The name of the spc to set the label for.
This will be a key to the file sys.spc_char.
- `alpha <label>` — The new label that this spc has.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Probably an illegal `<spcname>`

## Where Used

`sys.set_spclabel()` can be called from anywhere. It normally would be called from a program that remaps the function keys to a particular users liking.

## Example

```text
The sys.spc.ex1 program has the following code in the elp() PCL.




if (spcstring[12]) {
    sys.set_spcstr("user13",spcstring[12]);
    sys.set_spclabel("user13","F11");
}
```

## Description

`sys.set_spclabel()` changes the label that 4C associates with a particular function key, such as the `<accept>` key.

## See Also

[`sys.set_spcstr()`]({{< ref "setspcstr.md" >}}) `sys.set_spclabel()` [`sys.set_spcalt()`]({{< ref "setspcalt.md" >}}) [`sys.get_spcstr()`]({{< ref "getspcstr.md" >}}) [`sys.get_spclabel()`]({{< ref "getspclabel.md" >}}) [`sys.get_spcalt()`]({{< ref "getspcalt.md" >}})

Back to Top

