---
title: "sys.get_ldata()"
description: "requests data from an open LData connection"
weight: 159
draft: false
---

## Purpose

`sys.get_ldata()` requests data from an open LData connection.

## Usage

```text
ret = sys.get_ldata(<ldname>, <flags>);
```

## Arguments

- `<ldname>` — an alpha var that was used in a previous call to
sys.open_ldata()
- `<flags>` — can be one of:
- `LD_DEFAULT` — Using LD_DEFAULT, sys.get_ldata() will not return
until the data has been retrieved or an error has been returned
from the external process.
- `LD_NOWAIT` — Request the data but don't wait for it before
returning.
Using LD_NOWAIT is faster but your application will not
know exactly when the data has been retrieved.

## Returns

-1 = Failure and sys.errno will be set.
Probably no open LData connection with name `<ldname>`.
- `0` — Success

## Where Used

`sys.get_ldata()` can be called from anywhere. If you specified LD_AUTOMATIC, you won't normally need to call `sys.get_ldata()` since your application will be sent the data as it changes anyway.

## Description

Use `sys.get_ldata()` to get data from non onetime non automatic LData connections with external processes. The data will be returned into the field specified int the [`sys.open_ldata()`]({{< ref "openldata.md" >}}) call.

## See Also

[`sys.open_ldata()`]({{< ref "openldata.md" >}})

[`sys.close_ldata()`]({{< ref "closeldata.md" >}})

[`sys.set_ldata()`]({{< ref "setldata.md" >}})

Back to Top

## See Also

- [sys.open_ldata()]({{< ref "openldata.md" >}})
- [sys.close_ldata()]({{< ref "closeldata.md" >}})
- [sys.set_ldata()]({{< ref "setldata.md" >}})

