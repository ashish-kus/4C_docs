---
title: "sys.spc_code()"
description: "returns the internal code associate"
weight: 322
draft: false
---

## Purpose

`sys.spc_code()` returns the internal code associated with a 4C function key.

## Usage

```text
spccode = sys.spc_code(<fkeyname>);
```

## Arguments

- `alpha <fkeyname>` — The 4C name for the function key.
(i.e. "add", "search", "user1", "user2", etc.)

## Returns

integer `<spccode>`
- `>= 0` — The internal code
- `< 0` — Error - probably no such key `<fkeyname>`

## Where Used

`sys.spc_code()` can be called from anywhere.

## Description

This PCL is really a kludge to make up for the fact that some system PCLs, particularly [`sys.get_answer()`]({{< ref "getanswer.md" >}}), used to not deal with function keys. There really is very little use for this anymore. Check sys_ret after calling [`sys.get_answer()`]({{< ref "getanswer.md" >}}) instead.

## See Also

[`sys.get_answer()`]({{< ref "getanswer.md" >}})

Back to Top

