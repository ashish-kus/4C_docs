# Open()

## Purpose

FCCom::`Open()` establishes a connection to the server associated with `<connident>`.

## Usage

```text
ret = FCCom::Open(<connident>);
```

## Arguments

integer `<connident>` - The connection identifier returned by an earlier call to FCComm::[`Alloc()`]({{< ref "alloc.md" >}}).

## Returns

- `0` — OK
- `-1` — Error

## Where Used

FCCom:`Open()` can be called anytime after a connection has been allocated and initialized with the correct connection options.

## Example

```text
Example
```

## Description

FCCom::`Open()` establishes a connection to the server associated with `<connident>`. If no Port number has been explicitly set, then FCCom will default to using port 80 for non SSL connections and port 443 for SSL connections. FCCom::`Open()` is equivalent to FCCom::[`Connect()`]({{< ref "connect.md" >}}). It is not necessary to call FCCom::`Open()` or FCCom::[`Connect()`]({{< ref "connect.md" >}}) before issuing an FCCom::[`HttpRequest()`]({{< ref "httprequest.md" >}}) because FCCom::[`HttpRequest()`]({{< ref "httprequest.md" >}}) will first open the connection if it is not currently open. Calling either FCCom::[`Connect()`]({{< ref "connect.md" >}}) or FCCom::`Open()` first may help with debugging.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


