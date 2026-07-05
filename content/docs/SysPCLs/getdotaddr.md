---
title: "sys.get_dotaddr()"
description: "returns the dot address of a clien"
weight: 134
draft: false
---

## Purpose

`sys.get_dotaddr()` returns the dot address of a client program in nnn.nnn.nnn.nnn format.

## Usage

```text
dotaddr = sys.get_dotaddr(idx);
```

## Arguments

- `integer <idx>` — The zero based index of the client program.

## Returns

- `alpha <dotaddr>` — The dot address of the client program in
nnn.nnn.nnn.nnn format.

## Where Used

`sys.get_dotaddr()` can be called from anywhere. One place you may want to use it is in order to get the dotaddr to use in [`sys.send_msg()`]({{< ref "sendmsg.md" >}}) calls.

## Example

```text
dotaddr = sys.get_dotaddr(0);
```

## Description

`sys.get_dotaddr()` returns the dot address of a client program in nnn.nnn.nnn.nnn format. This can be used for any client, not just the client connected to this 4csrvr. The dot address of the current client is more easily gotten using the system variable sys.cl_dotaddr.

## See Also

[`sys.get_idx()`]({{< ref "getidx.md" >}})

[`sys.get_maxusers()`]({{< ref "getmaxusers.md" >}})

[`sys.get_nusers()`]({{< ref "getnusers.md" >}})

Back to Top

## See Also

- [sys.get_idx()]({{< ref "getidx.md" >}})
- [sys.get_maxusers()]({{< ref "getmaxusers.md" >}})
- [sys.get_nusers()]({{< ref "getnusers.md" >}})

