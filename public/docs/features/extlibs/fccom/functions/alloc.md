# Alloc()

## Purpose

FCCom::`Alloc()` allocates and initializes one connection option

## Usage

```text
<connident> = FCCom::Alloc([ <optname>,<optval> ]...);
```

## Arguments

- `alpha <optname>` — name of an option to set on this connection
The `<optname>`, `<optval>` pairs can be repeated up to 8 times.
Specifying certain global options when calling FCCom::Alloc() is a
convenience.
Any option that can be set here can also be set using FCCom::SetOption()

## Returns

- `integer <connident>` — The id to use when making library calls that need
to identify this connection.
This id will be >= 0 unless there is an error in the options passed.
If there is an error, -1 is returned.

## Where Used

FCComm::`Alloc()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCCom::`Alloc()` allocates the data structures necessary in order to make HTTP requests. It returns an integer that is used as an id for other FCCom library calls. The application must call FCCom::Free(`<connident>`) or FCCom::[`FreeAll()`]({{< ref "../../FCJSon/Functions/freeall.md" >}}) when this connection is no longer needed in order to free the resources associated with this connection. Options that can be specified in the FCCom::`Alloc()` call are:

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


