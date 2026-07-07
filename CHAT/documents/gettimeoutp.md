---
title: "sys.get_timeoutp()"
description: "returns the timeout prog and its argument"
weight: 185
draft: false
---

## Purpose

`sys.get_timeoutp()` returns the timeout prog and its arguments for any server/client program/session timeout.

## Usage

```text
oldtimeoutp = sys.get_timeoutp(TIMEOUT_TYPE);
```

## Arguments

TIMEOUT_TYPE must be one of

TO_SVGLOBAL - Server Session Timeout.

TO_SVPROGRAM - Server Program Timeout

TO_CLGLOBAL - Client Session Timeout

TO_CLPROGRAM - Client Program Timeout.

## Returns

- `Blank` — there is no timeoutprog or no timeout defined for TIMEOUT_TYPE.
- `NonBlank` — The program and args associated with TIMEOUT_TYPE.

## Where Used

`sys.get_timeoutp()` can be called from anywhere. However it will normally be called by a timeout processing program that wants to disable a timeout in the InitPCL and reenable it in the ExitPCL.

## Example

```text
The demo programs that catch timeouts have examples.
See:


demo.main.s



lockscreen.s
```

## Description

`sys.get_timeoutp()` returns the timeout prog and its arguments for either a program or a session timeout.

## See Also

[`sys.set_timeout()`]({{< ref "settimeout.md" >}})

[`sys.get_timeoutv()`]({{< ref "gettimeoutv.md" >}})

[`sys.set_alarm()`]({{< ref "setalarm.md" >}})

[`sys.lock_clientws()`]({{< ref "lockclientws.md" >}})

[`sys.exit_client()`]({{< ref "exitclient.md" >}})

[`sys.exit_4c()`]({{< ref "exit4c.md" >}})

Back to Top

## See Also

- [sys.set_timeout()]({{< ref "settimeout.md" >}})
- [sys.get_timeoutv()]({{< ref "gettimeoutv.md" >}})
- [sys.set_alarm()]({{< ref "setalarm.md" >}})
- [sys.lock_clientws()]({{< ref "lockclientws.md" >}})
- [sys.exit_client()]({{< ref "exitclient.md" >}})
- [sys.exit_4c()](https://www.4csoftware.com/docs/SysPCLs/exit_4c.html)

