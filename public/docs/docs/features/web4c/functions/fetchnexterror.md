# req4c_fetch_next_error()

## Purpose

`req4c_fetch_next_error()` returns the next error msg from the current message list.

## Usage

```text
$errmsg = req4c_fetch_next_error();
```

## Arguments

None

## Returns

- `false` — No more error messages in current list
- `$errmsg` — A string containing the error msg

## Where Used

`req4c_fetch_next_error()` can be called anytime there are error messages on the current message list.

## Description

req4c functions that make requests to 4creqd may generate error messages. These messages are kept on an internal list until another req4c function call clears the list. These messages can be helpful in debugging and and in letting the user know what went wrong.

## Bugs/Features/Comments

`req4c_fetch_next_error()` does not access the network

`req4c_fetch_next_error()` does not clear the message list, but it does move the internal pointer for the current error msg.

## See Also

[`req4c_get_num_errors()`]({{< ref "getnumerrors.md" >}})

[`req4c_fetch_all_errors()`]({{< ref "fetchallerrors.md" >}})

[`req4c_get_num_msgs()`]({{< ref "getnummsgs.md" >}})

`req4c_fecth_next_msg()`

[`req4c_fetch_all_msgs()`]({{< ref "fetchallmsgs.md" >}})

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [req4c_get_num_errors()]({{< ref "getnumerrors.md" >}})
- [req4c_fetch_all_errors()]({{< ref "fetchallerrors.md" >}})
- [req4c_get_num_msgs()]({{< ref "getnummsgs.md" >}})
- [req4c_fecth_next_msg()]({{< ref "fetchnextmsg.md" >}})
- [req4c_fetch_all_msgs()]({{< ref "fetchallmsgs.md" >}})


