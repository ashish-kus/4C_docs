---
title: "sys.lock_clientws()"
description: "locks the client workstation"
weight: 208
draft: false
---

## Purpose

`sys.lock_clientws()` locks the client workstation.

## Usage

```text
ret = sys.lock_clientws();
```

## Arguments

None

## Returns

- `0` — OK
- `-1` — Client version < 4.4.8

## Where Used

`sys.lock_clientws()` will normally be called when a client timeout has been caught and the application needs to protect the application data that may be visible on the client workstation.

## Example

```text
If the demo application catches a client timeout,
it runs the program lockws.1.
This program gives the user 60 seconds to respond.
If the user does not respond at all, then lockws.1
calls sys.lock_clientws() and then exits the lockws.1
program.
```

## Description

`sys.lock_clientws()` will lock the client workstation. Multiple calls to `sys.lock_clientws()` are OK. To unlock the workstation the user needs only enter the workstation passwd, which may be blank.

## Bugs/Features/Comments

`sys.lock_clientws()` requires the client to be running version 4.4.8 or higher.

## See Also

[`sys.exit_client()`]({{< ref "exitclient.md" >}})

Back to Top

## See Also

- [sys.exit_client()]({{< ref "exitclient.md" >}})

