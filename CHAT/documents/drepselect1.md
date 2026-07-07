---
title: "sys.dr_epselect1()"
description: "does end page processing for selec"
weight: 61
draft: false
---

## Purpose

`sys.dr_epselect1()` does end page processing for select scrolling screens.

## Usage

```text
sys.dr_epselect1();
```

## Arguments

None

## Returns

None

## Where Used

`sys.dr_epselect1()` can be called ONLY from the EndPage PCL processing of a scrolling screen.

## Description

`sys.dr_epselect1()` is used for scrolling screens to allow the user to select 1 rcd. A rcd is selected by pressing the `<accept>` key when the rcd is highlighted. In addition, if the 4C environment variable, XLRETURN, is set to "SELECT", then the `<return>` key also selects the rcd. When a rcd has been selected, the current program exits, setting $wexit_code to 0. If the user cancels, then $wexit_code will be set to -1.

`sys.dr_epselect1()` provides a subset of the commands that `sys.dr_epedit()` provides. The commands are all 1 key commands and some of them accept a count also. They are:

`<accept>` - Select rcd and exit program. `<return>` - If XLRETURN is "SELECT" then same as accept, otherwise error [count]G - GOTO rcd# - If count not specified, then GOTO last rcd. `<redisplay>` - Redisplays screen t or T   - Goto 1st rcd b or B   - Goto last rcd

## See Also

`sys.dr_epedit()`

Back to Top

## See Also

- [sys.dr_epedit()](https://www.4csoftware.com/docs/SysPCLs/drepedit.html)

