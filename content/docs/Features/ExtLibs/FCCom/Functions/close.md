---
title: "Close()"
weight: 2
draft: false
---

## Purpose

FCCom::`Close()` closes a connection to a server.

## Usage

```text
ret = FCCom::Close(<connident>);
```

## Arguments

- `integer <connident>` — The ident returned by an earlier
call to FCCom:Alloc().

## Returns

- `0` — OK
- `-1` — Error - no such connection id.

## Where Used

FCCom::`Close()` can be called anytime after a connection has been allocated.

## Example

```text
Example
```

## Description

FCCom::`Close()` closes a connection to a server. Calling FCCom::`Close()` is equivalent to calling FCCom:[`Disconnect()`]({{< ref "disconnect.md" >}}). If the connection is not open, this call has no effect. The `<connident>`, as long as it is valid, can be used to connect to a different server. Closing a connection does not reset any connection options, global headers, or cookies. If you need these reset, you will need to reset them individually or use a different connection.

If you are planning on freeing the connection right after close you do not need to call FCCom::`Close()` or FCCom::[`Disconnect()`]({{< ref "disconnect.md" >}}) since FCCom::[`Free()`]({{< ref "../../FCJSon/Functions/free.md" >}}) will close any open connection first.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})

