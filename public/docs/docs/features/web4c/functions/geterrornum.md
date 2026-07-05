# req4c_get_error_num()

## Purpose

`req4c_get_error_num()` returns the error number set by the last req4c function call.

## Usage

```text
$errornum = req4c_get_error_num();
```

## Arguments

None

## Returns

- `$errornum` — integer always >= 0

## Where Used

`req4c_get_error_num()` can be called anytime a req4c function fails.

## Description

`req4c_get_error_num()` returns the error number set by the last req4c function call. Every req4c function call with the exception of `req4c_get_error_num()` and [`req4c_get_error_msg()`]({{< ref "geterrormsg.md" >}}) clears both req4c error_num and req4c_error_msg

## Bugs/Features/Comments

`req4c_get_error_num()` does not access the network

`req4c_get_error_num()` leaves the current message list intact and does not reset $_REQ4C['errno'] or $_REQ4C['errmsg']

The superglobal $_REQ4C['errno'] also holds this error num

## See Also

[`req4c_get_error_msg()`]({{< ref "geterrormsg.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_get_error_msg()]({{< ref "geterrormsg.md" >}})


