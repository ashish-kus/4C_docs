# req4c_use_session()

## Purpose

`req4c_use_session()` sets the requested session as the current session.

## Usage

```text
$tf = req4c_use_session(<session>);
```

## Arguments

`<session>` - The session resource returned by a previous call to [`req4c_open_session()`]({{< ref "opensession.md" >}}) or [`req4c_create_session()`]({{< ref "createsession.md" >}}).

## Returns

- `false` — Error
- `true` — OK

## Where Used

`req4c_use_session()` can be called from anywhere.

## Description

`req4c_use_session()` is useful if you are using multiple req4c sessions at once. Using multiple req4c sessions at once is useful if you need to run 4C programs on different 4C servers or using different 4C applications on the same server. In most cases, you shouldn't need this capability. In most cases you should be able to just use the default FCServer and FCApp in the 4creqd configuration. [`req4c_open_session()`]({{< ref "opensession.md" >}}) verifies that the sessionid is valid and has not expired. If `req4c_use_session()` is successful, the session is made the current session and the sessionid is stored in the variable $_REQ4C['sessionid']. All session variables are also initialized into the $_REQ4C_SESSION array.

## Bugs/Features/Comments

[`req4c_open_session()`]({{< ref "opensession.md" >}}) requires a round trip to the 4creqd process.

`req4c_use_session()` clears the current message list

## See Also

[`req4c_create_session()`]({{< ref "createsession.md" >}})

[`req4c_open_session()`]({{< ref "opensession.md" >}})

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
- [req4c_close_session()]({{< ref "closesession.md" >}})
- [req4c_delete_session()]({{< ref "deletesession.md" >}})
- [req4c_verify_session()]({{< ref "verifysession.md" >}})
- [req4c_get_sessionid()]({{< ref "getsessionid.md" >}})


