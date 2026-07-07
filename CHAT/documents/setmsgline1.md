---
title: "sys.set_msgline1()"
description: "allows you to modify the 4C environmen"
weight: 298
draft: false
---

## Purpose

`sys.set_msgline1()` allows you to modify the 4C environment variable XLMSGLINE1.

## Usage

```text
sys.set_msgline1(<msgline1>);
```

## Arguments

- `integer <msgline1>` — The line number to display normal help messages on.
If non-positive, this is assumed to be relative to last line
of the screen.

## Returns

None

## Where Used

`sys.set_msgline1()` can be called from anywhere. It is most likely used in system programs that allow the user to change their environment.

## Example

```text
In the system program sys.help.set, the EndFld PCL for ok calls sethelp()
which in turn calls sys.set_msgline1() to set the user specified value
for XLMSGLINE1.
The entire sethelp() PCL follows:




sys.set_help(helpmsg);
sys.set_fkhelp(fkhelp);
sys.set_msgline1(msgl1);
sys.set_msgline2(msgl2);
sys.set_return(retsel);
```

## Description

`sys.set_msgline1()` sets the value of the 4C environment variable XLMSGLINE1. This env variable specifies the line number to display help messages. When <= 0, 4C calculates the real line number relative to the last line of the screen. Thus, for a 25 line screen, a value of -2 set XLMSGLINE1 to 23.

## Bugs/Features/Comments

The values stored in the 4C Environment variables may be different than those at the shell. Calls to [`sys.set_help()`]({{< ref "sethelp.md" >}}) etc do not modify the shell's environment, only 4C's internal copy. Even shells started from 4C will not share the same environment if the 4C environment has changed during running.

Of Course this is subject to change.

## See Also

[`sys.get_fkhelp()`]({{< ref "getfkhelp.md" >}}) [`sys.get_help()`]({{< ref "gethelp.md" >}}) [`sys.get_msgline1()`]({{< ref "getmsgline1.md" >}}) [`sys.get_msgline2()`]({{< ref "getmsgline2.md" >}}) [`sys.get_return()`]({{< ref "getreturn.md" >}}) [`sys.set_fkhelp()`]({{< ref "setfkhelp.md" >}}) [`sys.set_help()`]({{< ref "sethelp.md" >}}) [`sys.set_msgline2()`]({{< ref "setmsgline2.md" >}}) [`sys.set_return()`]({{< ref "setreturn.md" >}})

Back to Top

