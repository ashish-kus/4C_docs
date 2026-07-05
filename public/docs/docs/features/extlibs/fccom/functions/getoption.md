# GetOption()

## Purpose

FCCom::`GetOption()` returns the value associated with a known server option.

## Usage

```text
<optval> = FCCom::GetOption(<connident>,<optname>);
```

## Arguments

integer `<connident>` - A connection id returned by an earlier call to FCCom::[`Alloc()`]({{< ref "alloc.md" >}}).

alpha `<optname>` - A valid option name.

## Returns

- `""` — Error, invalid `<connident>` or invalid `<optname>`.
The value for the option as an alpha.

## Where Used

FCCom::`GetOption()` can be called anytime you have a valid connection id.

## Example

```text
Example
```

## Description

FCCom::`GetOption()` returns the value associated with a known server option. The known server options are:

Server - The server name or ip address set by either FCCom:[`Alloc()`]({{< ref "alloc.md" >}}) or FCCom::[`SetOption()`]({{< ref "setoption.md" >}})

Port - The Port Number set by either FCCom:[`Alloc()`]({{< ref "alloc.md" >}}) or FCCom::[`SetOption()`]({{< ref "setoption.md" >}})

UserName - The UserName set by either FCCom:[`Alloc()`]({{< ref "alloc.md" >}}) of FCCom:[`SetOption()`]({{< ref "setoption.md" >}})

Password - The Password set by either FCCom:[`Alloc()`]({{< ref "alloc.md" >}}) of FCCom:[`SetOption()`]({{< ref "setoption.md" >}})

UseSSL - "True" if SSL has been enabled, "False" otherwise.

Keep-Alive - "True" if the Keep-Alive option has been enabled and the server has not disallowed it. "False" otherwise.

Connected - "True" if the connection is currently open.

StatusMessage - The status message returned by the most recent FCCom::[`HttpRequest()`]({{< ref "httprequest.md" >}}) call using the same `<connident>`. Some possible returns are

"HTTP/1.1 200 OK"

"HTTP/1.1 400 Bad request"

etc.

Status - The code returned by the most recent FCCom::`Httprequest()` using the same `<connident>`.

Content-Length - The content length of the response from the most recent FCCom::[`HttpRequest()`]({{< ref "httprequest.md" >}}) using the same `<connident>`.

Content-Type - The content type of the response from the most recent FCCom::[`HttpRequest()`]({{< ref "httprequest.md" >}}) using the same `<connident>`.

## See Also

See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


