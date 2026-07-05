# req4c_verify_session()

## Purpose

`req4c_verify_session()` verifies that a session is valid and can be used.

## Usage

```text
$tf = req4c_verify_session([<session>]);
```

## Arguments

`<session>` - The session resource returned by a previous call to [`req4c_open_session()`]({{< ref "opensession.md" >}}) or [`req4c_create_session()`]({{< ref "createsession.md" >}}). This argument is optional and if not specified the current req4c session will be verified.

## Returns

- `false` — Error
- `true` — `<session>` is valid and can be used.

## Where Used

`req4c_verify_session()` can be called from anywhere. Since [`req4c_open_session()`]({{< ref "opensession.md" >}}) and [`req4c_use_session()`]({{< ref "usesession.md" >}}) both verify that the session is valid and not expired, this may not be too useful anymore.

## Description

`req4c_verify_session()` can be used to determine that the 4creqd process still recognizes a session as valid. 4creqd can be configured to delete req4c sessions if they have been alive too long, or if they have been idle too long. When `req4c_verify_session()` returns false, the req4c session no longer exists and cannot be used. When `req4c_verify_session()` returns true, the req4c session can still be used. In addition, 4creqd will have reset the idle time clock for the session. So, if 4creqd is configured to delete sessions after 15 minutes of being idle, then a successful return from `sys.verify_session()` guarantees that the session won't be deleted due to being idle for at least another 15 minutes.

## Bugs/Features/Comments

`req4c_verify_session()` requires a round trip request to the 4creqd process

`req4c_verify_session()` clears the current message list

## See Also

[`req4c_create_session()`]({{< ref "createsession.md" >}})

[`req4c_open_session()`]({{< ref "opensession.md" >}})

[`req4c_use_session()`]({{< ref "usesession.md" >}})

[`req4c_close_session()`]({{< ref "closesession.md" >}})

[`req4c_delete_session()`]({{< ref "deletesession.md" >}})

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
- [req4c_get_sessionid()]({{< ref "getsessionid.md" >}})


