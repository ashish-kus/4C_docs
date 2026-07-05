# req4c_get_num_msgs()

## Purpose

`req4c_get_num_msgs()` returns the number of info msgs in the current message list

## Usage

```text
$nummsgs = req4c_get_num_msgs();
```

## Arguments

None

## Returns

- `$nummsgs` — integer always >= 0

## Where Used

$`nummsgs()` can be called after any req4c function that could generate info messages. It should be called before calling any other req4c function that clears the message list.

## Description

`req4c_get_num_msgs()` returns the number of info msgs in the current message list

## Bugs/Features/Comments

`req4c_get_num_msgs()` does not access the network

[`req4c_get_error_num()`]({{< ref "geterrornum.md" >}}) leaves the current message list intact and does not reset $_REQ4C['errno'] or $_REQ4C['errmsg']

## See Also

[`req4c_fetch_next_msg()`]({{< ref "fetchnextmsg.md" >}})

[`req4c_fetch_all_msgs()`]({{< ref "fetchallmsgs.md" >}})

[`req4c_get_num_errors()`]({{< ref "getnumerrors.md" >}})

`req4c_fecth_next_error()`

[`req4c_fetch_all_errors()`]({{< ref "fetchallerrors.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_fetch_next_msg()]({{< ref "fetchnextmsg.md" >}})
- [req4c_fetch_all_msgs()]({{< ref "fetchallmsgs.md" >}})
- [req4c_get_num_errors()]({{< ref "getnumerrors.md" >}})
- [req4c_fecth_next_error()]({{< ref "fetchnexterror.md" >}})
- [req4c_fetch_all_errors()]({{< ref "fetchallerrors.md" >}})


