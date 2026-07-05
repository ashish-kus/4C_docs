# req4c_get_sessionid()

## Purpose

`req4c_get_sessionid()` returns the sessionid string of the session.

## Usage

```text
$sessionid = req4c_get_sessionid([<session>]);
```

## Arguments

`<session>` - The session resource returned by a previous call to [`req4c_open_session()`]({{< ref "opensession.md" >}}) or [`req4c_create_session()`]({{< ref "createsession.md" >}}). This argument is optional and if not specified the sessionid of the current req4c session will be returned.

## Returns

- `false` — Error
- `sessionid` — A string sessionid

## Where Used

`req4c_get_sessionid()` can be called from anywhere.

## Description

`req4c_get_sessionid()` will typically be used by an application when it wants to maintain session state between requests. It is the applications responsibility to save the sessionid in whatever way is best. If you only ever want to maintain state one session for any client, then you can use the "req4c_sessionid" cookie. Any call to [`req4c_open_session()`]({{< ref "opensession.md" >}}) that does not pass in a sessionid will look in _COOKIES['req4c_sessionid'] and use the sessionid found there if it exists.

## Bugs/Features/Comments

`req4c_get_sessionid()` does not require any round trip network requests.

`req4c_get_sessionid()` clears the current message list

The superglobal $_REQ4C['sessionid'] always holds the sessionid of the current req4c session if there is one. If there is no current req4c session then this variable will contain an empty string.

## See Also

[`req4c_create_session()`]({{< ref "createsession.md" >}})

[`req4c_open_session()`]({{< ref "opensession.md" >}})

[`req4c_use_session()`]({{< ref "usesession.md" >}})

[`req4c_close_session()`]({{< ref "closesession.md" >}})

[`req4c_delete_session()`]({{< ref "deletesession.md" >}})

[`req4c_verify_session()`]({{< ref "verifysession.md" >}})

`req4c_get_sessionid()`

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


