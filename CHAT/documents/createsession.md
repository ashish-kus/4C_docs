---
title: "req4c_create_session()"
weight: 2
draft: false
---

## Purpose

`req4c_create_session()` creates a new req4c session and sets it as the current session

## Usage

```text
$session = req4c_create_session([<connectstring>],[<appname]>);
```

## Arguments

- `<connectstring>` — A 4csrvr connection string.
This is an optional argument.
- `<appname>` — A 4csrvr application name
This is an optional argument.

## Returns

- `false` — Error
- `$session` — A new session resource

## Where Used

`req4c_create_session()` can be called from anywhere.

## Description

`req4c_create_session()` creates a new req4c session and makes it the current session. If `<connectstring>` is not specified the default FCServer connection will be used. If `<appname>` is not specified the default FCApp application will be used. After a successful call to `req4c_create_session()`, the current session is set to the new session and the variable $_REQ4C['sessionid'] is set to the new sessions sessionid string.

## Bugs/Features/Comments

`req4c_create_session()` requires a round trip request to the 4creqd process

`req4c_create_session()` clears the current message list.

## See Also

[`req4c_open_session()`]({{< ref "opensession.md" >}})

[`req4c_use_session()`]({{< ref "usesession.md" >}})

[`req4c_close_session()`]({{< ref "closesession.md" >}})

[`req4c_delete_session()`]({{< ref "deletesession.md" >}})

[`req4c_verify_session()`]({{< ref "verifysession.md" >}})

[`req4c_get_sessionid()`]({{< ref "getsessionid.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_open_session()]({{< ref "opensession.md" >}})
- [req4c_use_session()]({{< ref "usesession.md" >}})
- [req4c_close_session()]({{< ref "closesession.md" >}})
- [req4c_delete_session()]({{< ref "deletesession.md" >}})
- [req4c_verify_session()]({{< ref "verifysession.md" >}})
- [req4c_get_sessionid()]({{< ref "getsessionid.md" >}})

