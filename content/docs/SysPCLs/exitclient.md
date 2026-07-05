---
title: "sys.exit_client()"
description: "gracefully exits the 4C client"
weight: 89
draft: false
---

## Purpose

`sys.exit_client()` gracefully exits the 4C client.

## Usage

```text
sys.exit_client();
```

## Arguments

None

## Returns

None

## Where Used

`sys.exit_client()` can be called from anywhere but probably will be called from a program used to catch client timeouts.

## Example

```text
The lockws.1 program in the demo application
calls sys.exit_client() when a client timeout is caught
and the client has been idle longer than dc_clexitafter value
specified in the demo_config file.
```

## Description

`sys.exit_client()` gracefully exits the 4C client. Exiting the client will not immediately exit the server if the server is running a long update or report. The ContinueWork option in _4CSRVRCONFIG needs to be set to True to allow the 4csrvr to keep working on client exit. If it is not set to true, then the 4csrvr will also exit when the client exits. The 4csrvr will eventually exit after a client disconnect when it has no more work to do.

## See Also

[`sys.exit_4c()`]({{< ref "exit4c.md" >}})

[`sys.lock_clientws()`]({{< ref "lockclientws.md" >}})

[`sys.flash_window()`]({{< ref "flashwindow.md" >}})

Back to Top

## See Also

- [sys.exit_4c()]({{< ref "exit4c.md" >}})
- [sys.lock_clientws()]({{< ref "lockclientws.md" >}})
- [sys.flash_window()]({{< ref "flashwindow.md" >}})

