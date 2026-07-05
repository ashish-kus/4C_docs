# sys.flash_window()

## Purpose

`sys.flash_window()` flashes the current 4C window on the client.

## Usage

```text
sys.flash_window();
```

## Arguments

None

## Returns

- `0` — OK
- `-1` — Client version < 4.4.8

## Where Used

`sys.flash_window()` should only be used when you need to get the users attention. A program that is planning to lock the application or the client workstation after a short waiting period is a good example of where `sys.flash_window()` is necessary.

## Example

```text
When the demo application catches a client timeout,
the lockws.1 program uses sys.flash_window() while it is counting
down the amount of time before it locks the workstatio.



When the demo application catches a server timeout,
the lockscreen.warn program uses sys.flash_window() while it is counting
down the amount of time before it locks the demo application.
```

## Description

`sys.flash_window()` flashes the current 4C window on the client workstation. If the client is working in another application, the 4C window will flash in the taskbar.

Requirements

Requires both client and server version >= 4.4.8

## See Also

[`sys.exit_client()`]({{< ref "exitclient.md" >}})

[`sys.lock_clientws()`]({{< ref "lockclientws.md" >}})

Back to Top

## See Also

- [sys.exit_client()]({{< ref "exitclient.md" >}})
- [sys.lock_clientws()]({{< ref "lockclientws.md" >}})


