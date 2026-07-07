---
title: "req4c_open_session()"
weight: 36
draft: false
---

## Purpose

`req4c_open_session()` opens a req4c session and sets it as the current session

## Usage

```text
$session = req4c_open_session([<sessionid>]>);
```

## Arguments

- `<sessionid>` — A sessionid string that identifies an existing req4c session.
This is an optional argument.

## Returns

- `false` — Error
- `$session` — A new session resource

## Where Used

`req4c_open_session()` can be called from anywhere.

## Description

`req4c_open_session()` opens a req4c session and sets it as the current session. If you pass in a sessionid string, then `req4c_open_session()`, opens that session. If you do not pass in a sessionid string, then `req4c_open_session()` looks in _COOKIES['req4c_sessionid'] and uses that value for the sessionid if it exists. `req4c_open_session()` verifies that the sessionid is valid and has not expired. If the session is opened successfully, it becomes the current session and the sessionid of this session is stored in the variable $_REQ4C['sessionid'] All session variables are also initialized into the $_REQ4C_SESSION array.

## Bugs/Features/Comments

`req4c_open_session()` requires a round trip to the 4creqd process.

`req4c_open_session()` clears the current message list

## See Also

[`req4c_create_session()`]({{< ref "createsession.md" >}})

`req4c_open_session()`

[`req4c_use_session()`]({{< ref "usesession.md" >}})

[`req4c_close_session()`]({{< ref "closesession.md" >}})

[`req4c_delete_session()`]({{< ref "deletesession.md" >}})

[`req4c_verify_session()`]({{< ref "verifysession.md" >}})

[`req4c_get_sessionid()`]({{< ref "getsessionid.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_create_session()]({{< ref "createsession.md" >}})
- [req4c_open_session()]({{< ref "opensession.md" >}})
- [req4c_use_session()]({{< ref "usesession.md" >}})
- [req4c_close_session()]({{< ref "closesession.md" >}})
- [req4c_delete_session()]({{< ref "deletesession.md" >}})
- [req4c_verify_session()]({{< ref "verifysession.md" >}})
- [req4c_get_sessionid()]({{< ref "getsessionid.md" >}})

