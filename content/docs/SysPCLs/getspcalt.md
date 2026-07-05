---
title: "sys.get_spcalt()"
description: "returns the alternate value of"
weight: 179
draft: false
---

## Purpose

`sys.get_spcalt()` returns the alternate value of a 4C function key.

## Usage

```text
spcalt = sys.get_spcalt(<spcname>);
```

## Arguments

- `alpha <spcname>` — The name of the spc to get the alternate value for.
This will be a key to the file sys.spc_char.

## Returns

- `<alpha> spcalt` — The alternate value of the spc for `<spcname>`.
This will be blank if an illegal `<spcname>` is specified.
Any control characters are converted to a displayable
format.

## Where Used

`sys.get_spcalt()` can be called from anywhere. It normally would be called from a program that remaps the function keys to a particular users liking.

## Example

```text
The following is from the slp() PCL of sys.spc.set.




spcstring = sys.get_spcstr(sys.spc_name);
spclabel = sys.get_spclabel(sys.spc_name);
spcalt = sys.get_spcalt(sys.spc_name);
ok = ''
```

## Description

`sys.get_spcalt()` returns the alternate value of a 4C function key. The alternate value is normally an escape sequence that the user types in order to trigger a 4C function key. The 4C function key is triggered whenever 4C recognizes the spcstring sequence or the spcalt sequence in the input stream.

## See Also

[`sys.set_spcstr()`]({{< ref "setspcstr.md" >}}) [`sys.set_spclabel()`]({{< ref "setspclabel.md" >}}) [`sys.set_spcalt()`]({{< ref "setspcalt.md" >}}) [`sys.get_spcstr()`]({{< ref "getspcstr.md" >}}) [`sys.get_spclabel()`]({{< ref "getspclabel.md" >}}) `sys.get_spcalt()`

Back to Top

