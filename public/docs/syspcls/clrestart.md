# sys.cl_restart()

## Purpose

`sys.cl_restart()` restarts the client.

## Usage

```text
ret = sys.cl_restart([<argstring>])
```

## Arguments

- `alpha <argstring>` — If specified, these arguments replace the original
arguments to the 4c client.

## Returns

- `-1` — Client version is earlier than 4.4.4
Otherwis there will be not return,
the 4csrvr process will exit.

## Where Used

`sys.cl_restart()` should only be used in rare circumstances. Possibly, when updating a client preference that requires a restart.

## Description

`sys.cl_restart()` causes the interactive 4c client to terminate and start another session. The new session will be started with the same arguments as the original session unless you specify a new `<argstring>`.

Requirements

`sys.cl_restart()` requires both client and server to be at version 4.4.4 or higher.

## Bugs/Features/Comments

`sys.cl_restart()` is not supported by the non interactive 4C client, 4ccl.

## See Also

[`sys.set_clpref()`]({{< ref "setclpref.md" >}})

[`sys.exit_4c()`]({{< ref "exit4c.md" >}})

Back to Top

## See Also

- [sys.set_clpref()]({{< ref "setclpref.md" >}})
- [sys.exit_4c()]({{< ref "exit4c.md" >}})


