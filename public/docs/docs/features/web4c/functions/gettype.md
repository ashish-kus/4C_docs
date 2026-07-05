# req4c_get_type()

## Purpose

`req4c_get_type()` returns the 4C type that generated the current ResultRow in `<resultset>`.

## Usage

```text
$type = req4c_get_type(<resultset>);
```

## Arguments

- `<resultset>` — A ResultSet resource returned by req4c_run().

## Returns

- `false` — Error
- `$type` — The 4C type that generated the current ResultRow in
`<resultset>`

## Where Used

`req4c_get_type()` can be called anytime you have a req4c ResultSet and need to know the 4C type that generated the current ResultRow in `<resultset>`.

## Description

`req4c_get_type()` returns the 4C type that generated the current ResultRow in `<resultset>`. $type is usually the name of the report that generated the ResultRow. It could also be the type specified in a call to [`sys.send_result()`]({{< ref "../../../SysPCLs/sendresult.md" >}}). $type can be used to determine how you want to fetch or format the ResultRow.

## Bugs/Features/Comments

`req4c_get_type()` does not access the network

`req4c_get_type()` leaves the current message list intact.

## See Also

[`req4c_get_prog()`]({{< ref "getprog.md" >}})

[`req4c_get_next_prog()`]({{< ref "getnextprog.md" >}})

[`req4c_get_prev_prog()`]({{< ref "getprevprog.md" >}})

[`req4c_get_first_prog()`]({{< ref "getfirstprog.md" >}})

[`req4c_get_last_prog()`]({{< ref "getlastprog.md" >}})

`req4c_get_type()`

[`req4c_get_next_type()`]({{< ref "getnexttype.md" >}})

[`req4c_get_prev_type()`]({{< ref "getprevtype.md" >}})

[`req4c_get_first_type()`]({{< ref "getfirsttype.md" >}})

[`req4c_get_last_type()`]({{< ref "getlasttype.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_get_prog()]({{< ref "getprog.md" >}})
- [req4c_get_next_prog()]({{< ref "getnextprog.md" >}})
- [req4c_get_prev_prog()]({{< ref "getprevprog.md" >}})
- [req4c_get_first_prog()]({{< ref "getfirstprog.md" >}})
- [req4c_get_last_prog()]({{< ref "getlastprog.md" >}})
- [req4c_get_type()]({{< ref "gettype.md" >}})
- [req4c_get_next_type()]({{< ref "getnexttype.md" >}})
- [req4c_get_prev_type()]({{< ref "getprevtype.md" >}})
- [req4c_get_first_type()]({{< ref "getfirsttype.md" >}})
- [req4c_get_last_type()]({{< ref "getlasttype.md" >}})


