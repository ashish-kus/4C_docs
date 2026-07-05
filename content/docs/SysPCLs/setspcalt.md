---
title: "sys.set_spcalt()"
description: "allows a program to change th"
weight: 308
draft: false
---

## Purpose

`sys.set_spcalt()` allows a program to change the alternate escape sequence that 4C expects for a function key.

## Usage

```text
ret = sys.set_spcalt(<spcname>,<value>);
```

## Arguments

- `alpha <spcname>` — The name of the spc to set the alt sequence for.
This will be a key to the file sys.spc_char.
- `alpha <value>` — The new alt sequence that this spc has.
Characters preceded by a '\' or a '^' are treated
as control characters and are converted first.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Probably an illegal `<spcname>`

## Where Used

`sys.set_spcalt()` can be called from anywhere. It normally would be called from a program that remaps the function keys to a particular users liking.

## Example

```text
The sys.spc.set program has the following code in the
elp() PCL.




if (spcalt)
    sys.set_spcalt(sys.spc_name,spcalt);
```

## Description

`sys.set_spcalt()` changes the alternate escape sequence that 4C is expecting for a particular function key, such as the `<accept>` key.

## See Also

[`sys.set_spcstr()`]({{< ref "setspcstr.md" >}}) [`sys.set_spclabel()`]({{< ref "setspclabel.md" >}}) `sys.set_spcalt()` [`sys.get_spcstr()`]({{< ref "getspcstr.md" >}}) [`sys.get_spclabel()`]({{< ref "getspclabel.md" >}}) [`sys.get_spcalt()`]({{< ref "getspcalt.md" >}})

Back to Top

