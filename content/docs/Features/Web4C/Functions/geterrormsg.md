---
title: "req4c_get_error_msg()"
weight: 19
draft: false
---

## Purpose

`req4c_get_error_msg()` returns the error msg set by the last req4c function call.

## Usage

```text
$errormsg = req4c_get_error_msg();
```

## Arguments

None

## Returns

- `$errormsg` — string - always returned, but may be empty

## Where Used

`req4c_get_error_msg()` can be called anytime a req4c function fails.

## Description

`req4c_get_error_msg()` returns the error message set by the last req4c function call. Every req4c function call with the exception of [`req4c_get_error_num()`]({{< ref "geterrornum.md" >}}) and `req4c_get_error_msg()` clears both req4c error_num and req4c_error_msg

## Bugs/Features/Comments

`req4c_get_error_msg()` does not access the network

[`req4c_get_error_num()`]({{< ref "geterrornum.md" >}}) leaves the current message list intact and does not reset $_REQ4C['errno'] or $_REQ4C['errmsg']

The superglobal $_REQ4C['errmsg'] also holds this error msg

## See Also

[`req4c_get_error_num()`]({{< ref "geterrornum.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_get_error_num()]({{< ref "geterrornum.md" >}})

