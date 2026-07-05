# req4c_close_session()

## Purpose

`req4c_close_session()` closes the current req4c session if there is one.

## Usage

```text
$tf = req4c_close_session();
```

## Arguments

None

## Returns

- `false` — Error
- `true` — OK

## Where Used

`req4c_close_session()` can be called anytime there is a req4c session in use.

## Description

`req4c_close_session()` closes the current req4c session. The session is not deleted and as long as the sessionid is remembered, it can be reopened later. After the current session is closed the variable $_REQ4C['sessionid'] is set to the empty string.

## Bugs/Features/Comments

`req4c_close_session()` does not require any round trip network requests

`req4c_close_session()` clears the current message list.

## See Also

[`req4c_create_session()`]({{< ref "createsession.md" >}})

[`req4c_open_session()`]({{< ref "opensession.md" >}})

[`req4c_use_session()`]({{< ref "usesession.md" >}})

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
- [req4c_delete_session()]({{< ref "deletesession.md" >}})
- [req4c_verify_session()]({{< ref "verifysession.md" >}})
- [req4c_get_sessionid()]({{< ref "getsessionid.md" >}})


