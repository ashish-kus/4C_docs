---
title: "sys.pr_restart()"
description: "restarts the current program at the Start/Restart stat"
weight: 242
draft: false
---

## Purpose

`sys.pr_restart()` restarts the current program at the Start/Restart state

## Usage

```text
ret = sys.pr_restart();
```

## Returns

- `-1` — Program is not currently open
If sys.pr_restart() succeeeds then there is no return to the calling PCL.

## Where Used

`sys.pr_restart()` can be called from anytime that the program is open. A program that has not finished executing the Open PCL or a program that has already started executing the Exit PCL is not considered open.

## Description

`sys.pr_restart()` can be used by the application to restart the current program. If the program is a screen program, the window will not disappear. Program and file vsriables are not cleared. If you need to reset file variables to some other initial state, you will want to use one or more of [`sys.fl_save()`]({{< ref "flsave.md" >}}), [`sys.fl_restore()`]({{< ref "flrestore.md" >}}), and [`sys.restore_share()`]({{< ref "restoreshare.md" >}}).

If the program is a scrolling program, the driver is closed and any screen list will be cleared. If the program is a panel program and it has an initial option panel, then that initial option panel will get control after the Start/Restart PCL is executed.

Requirements

4csrvr version 5.2 or later

## See Also

[`sys.fl_save()`]({{< ref "flsave.md" >}})

[`sys.restore_share()`]({{< ref "restoreshare.md" >}})

[`sys.fl_restore()`]({{< ref "flrestore.md" >}})

Back to Top

## See Also

- [sys.fl_save()]({{< ref "flsave.md" >}})
- [sys.restore_share()]({{< ref "restoreshare.md" >}})
- [sys.fl_restore()]({{< ref "flrestore.md" >}})

