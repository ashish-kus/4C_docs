# req4c_get_apprc()

## Purpose

`req4c_get()` returns the exit code of the 4C program that created `<resultset>`

## Usage

```text
$rc = req4c_get_apprc(<resultset>);
```

## Arguments

- `<resultset>` — A ResultSet resource returned by req4c_run().

## Returns

- `false` — Error
- `$rc` — the integer exit code of the 4C program.

## Where Used

`req4c_get_apprc()` can be called anytime you have a ResultSet and need the application return code.

## Description

`req4c_get()` returns the exit code of the 4C program that created `<resultset>`

## Bugs/Features/Comments

`req4c_get_apprc()` does not access the network

[`req4c_get_error_num()`]({{< ref "geterrornum.md" >}}) leaves the current message list intact and does not reset $_REQ4C['errno'] or $_REQ4C['errmsg']

## See Also

[`req4c_get_num_results()`]({{< ref "getnumresults.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_get_num_results()]({{< ref "getnumresults.md" >}})


