# sys.get_timeoutv()

## Purpose

`sys.get_timeoutv()` returns the timeout value for any server/client session/program timeout.

## Usage

```text
oldtimeoutv = sys.get_timeoutv(TIMEOUT_TYPE);
```

## Arguments

TIMEOUT_TYPE must be one of

TO_SVGLOBAL - Server Session Timeout.

TO_SVPROGRAM - Server Program Timeout

TO_CLGLOBAL - Client Session Timeout

TO_CLPROGRAM - Client Program Timeout.

## Returns

- `0` — there is no timeout defined for TIMEOUT_TYPE.
- `> 0` — The #seconds associated with TIMEOUT_TYPE.

## Where Used

`sys.get_timeoutv()` can be called from anywhere.

## Example

```text
The demo programs that catch timeouts have examples.
See:


demo.main.s



lockscreen.s
```

## Description

`sys.get_timeoutv()` returns the #seconds for for the specified timeout type.

## See Also

[`sys.set_timeout()`]({{< ref "settimeout.md" >}})

[`sys.get_timeoutp()`]({{< ref "gettimeoutp.md" >}})

[`sys.set_alarm()`]({{< ref "setalarm.md" >}})

[`sys.lock_clientws()`]({{< ref "lockclientws.md" >}})

[`sys.exit_client()`]({{< ref "exitclient.md" >}})

[`sys.exit_4c()`]({{< ref "exit4c.md" >}})

Back to Top

## See Also

- [sys.set_timeout()]({{< ref "settimeout.md" >}})
- [sys.get_timeoutp()]({{< ref "gettimeoutp.md" >}})
- [sys.set_alarm()]({{< ref "setalarm.md" >}})
- [sys.lock_clientws()]({{< ref "lockclientws.md" >}})
- [sys.exit_client()]({{< ref "exitclient.md" >}})
- [sys.exit_4c()](https://www.4csoftware.com/docs/SysPCLs/exit_4c.html)


