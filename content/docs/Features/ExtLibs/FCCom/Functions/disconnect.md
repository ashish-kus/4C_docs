---
title: "Disconnect()"
weight: 5
draft: false
---

## Purpose

FCCom::`Disconnect()` closes a connection to a server.

## Usage

```text
ret = FCCom::Disconnect(<connident>);
```

## Arguments

- `integer <connident>` — The ident returned by an earlier
call to FCCom:Alloc().

## Returns

- `0` — OK
- `-1` — Error - no such connection id.

## Where Used

FCCom::`Disconnect()` can be called anytime after a connection has been allocated.

## Example

```text
Example
```

## Description

FCCom::`Disconnect()` closes a connection to a server. Calling FCCom::`Disconnect()` is equivalent to calling FCCom:[`Close()`]({{< ref "close.md" >}}). If the connection is not open, this call has no effect. The `<connident>`, as long as it is valid, can be used to connect to a different server. Closing a connection does not reset any connection options, global headers, or cookies. If you need these reset, you will need to reset them individually or use a different connection. server.

If you are planning on freeing the connection right after close you do not need to call FCCom::[`Close()`]({{< ref "close.md" >}}) or FCCom::`Disconnect()` since FCCom::[`Free()`]({{< ref "../../FCJSon/Functions/free.md" >}}) will close any open connection first.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})

