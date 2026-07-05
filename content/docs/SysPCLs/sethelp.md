---
title: "sys.set_help()"
description: "allows you to modify the 4C environmen"
weight: 295
draft: false
---

## Purpose

`sys.set_help()` allows you to modify the 4C environment variable XLHELPMSG.

## Usage

```text
ret = sys.set_help(<helpmsg>);
```

## Arguments

- `alpha <helpmsg>` — This can be "ON" or "OFF" only.
Any other value is ignored and causes an error return.

## Returns

integer `<ret>`
- `0` — OK - XLHELPMSG set.
- `-1` — `<helpmsg>` Illegal Val.

## Where Used

`sys.set_help()` can be called from anywhere. It is most likely used in system programs that allow the user to change their environment.

## Example

```text
In the system program sys.help.set, the EndFld PCL for ok calls sethelp()
which in turn calls sys.set_help() to set the user specified value
for XLHELPMSG.
The entire sethelp() PCL follows:




sys.set_help(helpmsg);
sys.set_fkhelp(fkhelp);
sys.set_msgline1(msgl1);
sys.set_msgline2(msgl2);
sys.set_return(retsel);
```

## Description

`sys.set_help()` sets the value of the 4C environment variable XLHELPMSG. This env variable is used to control whether help messages display automatically. If XLHELPMSG is set to "ON", then 4C will display field help messages on XLMSGLINE1. If set to "OFF", then 4C does not display any field help messages automatically.

## Bugs/Features/Comments

The values stored in the 4C Environment variables may be different than those at the shell. Calls to `sys.set_help()` etc do not modify the shell's environment, only 4C's internal copy. Even shells started from 4C will not share the same environment if the 4C environment has changed during running.

Of Course this is subject to change.

## See Also

[`sys.get_fkhelp()`]({{< ref "getfkhelp.md" >}}) [`sys.get_help()`]({{< ref "gethelp.md" >}}) [`sys.get_msgline1()`]({{< ref "getmsgline1.md" >}}) [`sys.get_msgline2()`]({{< ref "getmsgline2.md" >}}) [`sys.get_return()`]({{< ref "getreturn.md" >}}) [`sys.set_fkhelp()`]({{< ref "setfkhelp.md" >}}) [`sys.set_msgline1()`]({{< ref "setmsgline1.md" >}}) [`sys.set_msgline2()`]({{< ref "setmsgline2.md" >}}) [`sys.set_return()`]({{< ref "setreturn.md" >}})

Back to Top

