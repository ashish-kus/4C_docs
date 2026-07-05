# SetOption()

## Purpose

FCCom::`SetOption()` sets a connection option or a global header for the connection.

## Usage

```text
ret = FCCom::SetOption(<connident>,<optname>,<optval>);
```

## Arguments

integer `<connident>` - An ident returned by an earlier call to FCCom::[`Alloc()`]({{< ref "alloc.md" >}}).

alpha `<optname>` - Name of the option to set.

alpha `<optval>` - Value to set the option to.

## Returns

- `0` — OK
- `-1` — Error - invalid ident.

## Where Used

FCCom::`SetOption()` can be called anytime you have a valid `<connident>`.

## Example

```text
Example
```

## Description

FCCom::`SetOption()` sets a connection option or a global header for the connection. Options that you can set are:

Server - the dns name or ip address of the server this connection will be connection to

Port - The portnumber to use with this connection

UserName/UsrName - The username to use if the server requires Basic Authentication

Password/Passwd/Pwd - The password to use if the Server requires Basic Authentication.

UseSSL/SSL - Specify "Yes" or "True" to enable SSL. Any other value means do not use SSL

Keep-Alive - If this connection will be used for multiple requests over a short time interval, then setting this option to "True" may make it more responsive. This is just a hint that the server you are connecting to can decide to use or ignore.

Any other option set here is assumed to be a global header and you are responsible for knowing what it does and why you are using it. FCCom can not do any error checking.

Global headers are sent with every http request to the server.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


