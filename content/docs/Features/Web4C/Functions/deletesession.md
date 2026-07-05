---
title: "req4c_delete_session()"
weight: 3
draft: false
---

## Purpose

`req4c_delete_session()` deletes a req4c session

## Usage

```text
$tf = req4c_delete_session([<session>]);
```

## Arguments

`<session>` - The session resource returned by a previous call to [`req4c_open_session()`]({{< ref "opensession.md" >}}) or [`req4c_create_session()`]({{< ref "createsession.md" >}}). This argument is optional and if not specified the current req4c session will be deleted.

## Returns

- `false` — Error
- `true` — OK `<session>` deleted and can no longer be used.

## Where Used

`req4c_delete_session()` can be called anytime a session will no longer be needed.

## Description

`req4c_delete_session()` sends a message to the 4creqd process to delete the session. The session will no longer be usable by any req4c function. Though the 4creqd process has been informed that the session has been deleted there is no way to inform a 4C server that the session has been deleted. If the session being deleted is the current req4c session, the variable $_REQ4C['sessionid'] is set to the empty string and there no longer is a current req4c session.

## Bugs/Features/Comments

`req4c_delete_session()` requires a round trip request to the 4creqd process

`req4c_delete_session()` clears the current message list

## See Also

[`req4c_create_session()`]({{< ref "createsession.md" >}})

[`req4c_open_session()`]({{< ref "opensession.md" >}})

[`req4c_use_session()`]({{< ref "usesession.md" >}})

[`req4c_close_session()`]({{< ref "closesession.md" >}})

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
- [req4c_verify_session()]({{< ref "verifysession.md" >}})
- [req4c_get_sessionid()]({{< ref "getsessionid.md" >}})

