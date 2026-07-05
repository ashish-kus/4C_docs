---
title: "sys.get_tty()"
description: "returns the terminal name of <username>"
weight: 189
draft: false
---

## Purpose

`sys.get_tty()` returns the terminal name of `<username>`.

## Usage

```text
ttyname = sys.get_tty(<username>);
```

## Arguments

- `alpha <username>` — the name of the user that you want the tty name
of.

## Returns

- `""` — No such user `<username>` currently logged on.
- `alpha <ttyname>` — The terminal name of user `<username>`

## Where Used

`sys.get_tty()` can be called from anywhere. It could be used before a call to [`sys.send_msg()`]({{< ref "sendmsg.md" >}}) to determine the ttyname parameter.

## Description

`sys.get_tty()` returns the tty name of `<username>`. The "/dev/" is stripped off of the name returned.

## Bugs/Features/Comments

If more than one user with same name are running 4C, `sys.get_tty()` will only ever return the ttyname of one of them.

Be careful not to confuse this routine with [`sys.get_ttyname()`]({{< ref "getttyname.md" >}}) which uses a `<useridx>` instead of `<username>`.

## See Also

[`sys.get_ttyname()`]({{< ref "getttyname.md" >}}) [`sys.send_msg()`]({{< ref "sendmsg.md" >}})

Back to Top

