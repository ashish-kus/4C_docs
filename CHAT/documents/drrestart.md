---
title: "sys.dr_restart()"
description: "restarts a drive"
weight: 71
draft: false
---

## Purpose

`sys.dr_restart()` restarts a driver

## Usage

```text
ret = sys.dr_restart([<drfile>],<flags>);
```

## Arguments

- `asfile <drfile>` — The asfile name of the driver to restart
- `integer <flags>` — restart flags.
The only possible values for the flags are:
DR_APPEND
DR_CLEAR

## Returns

This System PCL should not return. If it does the return is -1 and means that the specified driver was not running.

## Where Used

`sys.dr_restart()` can be called any time while the driver is running.

One likely reason to restart a driver is to allow the user to select more rcds than were originally selected for display.

## Example

```text
sys.dr_restart(DR_CLEAR);



     This will restart the current driver clearing all
rcds already selected.
The DrInit PCL will be able to specify sort fields
as well as new include fields.



sys.dr_restart(sys.program,DR_APPEND);



     This will restart the sys.program driver and append rcds
to the select file.
The DrInit PCL will not be able to specify new sort fields
or include fields.
```

## Description

`sys.dr_restart()` will restart the specified driver. If successfull, all states nested within the driver will be exited. This means that any nested drivers, pcls, or fields will exited. You can restart program drivers as well as non program drivers. When a driver is restarted, the DrInit PCL will be re-executed. If DR_CLEAR is specified, then you can change any of the parameters of the DrInit. You can change sortby fields, and include fields. If DR_APPEND is specified, then 4C forces these values to maintain their original values.

You can always specify the order to read the driver file by as well as the window of rcds to select.

When DR_APPEND is specified and you reselect rcds that were previously selected,  they are re-written into the driver sort file, replacing the original.

## See Also

`sys.end_driver()`

`sys.exit_driver()`

Back to Top

## See Also

- [sys.end_driver()](https://www.4csoftware.com/docs/SysPCLs/enddriver.html)
- [sys.exit_driver()](https://www.4csoftware.com/docs/SysPCLs/exitdriver.html)

