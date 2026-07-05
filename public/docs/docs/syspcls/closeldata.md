# sys.close_ldata()

## Purpose

`sys.close_ldata()` closes an open LData connection.

## Usage

```text
ret = sys.close_ldata(<ldname>);
```

## Arguments

- `<ldname>` — an alpha var that was used in a previous call to
sys.open_ldata()

## Returns

-1 = Failure and sys.errno will be set.
Probably no open LData connection with name `<ldname>`.
- `0` — Success

## Where Used

`sys.close_ldata()` can be called from anywhere.

## Description

Use `sys.close_ldata()` to close non onetime LData connections with external processes.

## See Also

[`sys.open_ldata()`]({{< ref "openldata.md" >}})

[`sys.get_ldata()`]({{< ref "getldata.md" >}})

[`sys.set_ldata()`]({{< ref "setldata.md" >}})

Back to Top

## See Also

- [sys.open_ldata()]({{< ref "openldata.md" >}})
- [sys.get_ldata()]({{< ref "getldata.md" >}})
- [sys.set_ldata()]({{< ref "setldata.md" >}})


