---
title: "sys.seek_key()"
description: "prepares for sequential readin"
weight: 265
draft: false
---

## Purpose

`sys.seek_key()` prepares for sequential reading by seeking to either the start or end key position.

## Usage

```text
ret = sys.seek_key(<asfile>,<keyno>,<seektype>);
```

## Arguments

- `<asfile>` — asfile
- `integer <keyno>` — An integer returned by a call to sys.get_keyno()
- `integer <seektype>` — Either SEEK_START or SEEK_END

## Returns

- `0` — OK
- `-1` — Some Error

## Where Used

`sys.seek_key()` will typically be called after calls to [`sys.set_skey()`]({{< ref "setskey.md" >}}) and [`sys.set_ekey()`]({{< ref "setekey.md" >}}) and before calling sys.read_file(...,F_SEQNEXT)

## Example

```text
See the demo.seekkey.1 demo program for an example.
```

## Description

`sys.seek_key()` prepares a file for reading sequentially. If the start key set by a call to [`sys.set_skey()`]({{< ref "setskey.md" >}}) is greater than the end key set by a call to [`sys.set_skey()`]({{< ref "setskey.md" >}}), or if the `<seektype>` is SEEK_END, `sys.seek_key()` reverses the meaning of F_SEQNEXT and F_SEQPREV for sequential reads that follow. You almost always should use F_SEQNEXT when reading a file sequentially after a call to `sys.seek_key()`.

F_DRNEXT and F_DRPREV can be used in place of F_SEQNEXT and F_SEQPREV and are better alternatives because you do not need to specify the key that you are reading by. They will always use the key specified in the `<keyno>` arg.

## Bugs/Features/Comments

When using `sys.seek_key()` on secondary keys, you still need to specify the keyno in calls to sys.read_file(...,F_SEQNEXT) So use F_DRNEXT and F_DRPREV instead.

Be very careful using F_SEQPREV after calling `sys.seek_key()`. It may actually read the next rcd rather than the previous.

## See Also

[`sys.set_skey()`]({{< ref "setskey.md" >}})

[`sys.set_ekey()`]({{< ref "setekey.md" >}})

[`sys.read_file()`]({{< ref "readfile.md" >}})

Back to Top

## See Also

- [sys.set_skey()]({{< ref "setskey.md" >}})
- [sys.set_ekey()]({{< ref "setekey.md" >}})
- [sys.read_file()]({{< ref "readfile.md" >}})

