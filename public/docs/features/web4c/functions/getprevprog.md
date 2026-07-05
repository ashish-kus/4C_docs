# req4c_get_prev_prog()

## Purpose

`req4c_get_prev_prog()` returns the 4C program name that generated the previous ResultRow in `<resultset>`.

## Usage

```text
$prname = req4c_get_prev_prog(<resultset>);
```

## Arguments

- `<resultset>` — A ResultSet resource returned by req4c_run().

## Returns

- `false` — Error
- `$prname` — The name of 4C program that generated the previous ResultRow in
`<resultset>`

## Where Used

`req4c_get_prev_prog()` can be called anytime you have a req4c ResultSet and need to know the name of the 4C program that generated the previous ResultRow in `<resultset>`.

## Description

`req4c_get_prev_prog()` returns the 4C program name that generated the previous ResultRow in `<resultset>`. $prname can be used to determine how you want to fetch or format the ResultRow.

## Bugs/Features/Comments

`req4c_get_prev_prog()` does not access the network

`req4c_get_prev_prog()` leaves the current message list intact.

## See Also

[`req4c_get_prog()`]({{< ref "getprog.md" >}})

[`req4c_get_next_prog()`]({{< ref "getnextprog.md" >}})

`req4c_get_prev_prog()`

[`req4c_get_first_prog()`]({{< ref "getfirstprog.md" >}})

[`req4c_get_last_prog()`]({{< ref "getlastprog.md" >}})

[`req4c_get_type()`]({{< ref "gettype.md" >}})

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


