---
title: "SetReqHeader()"
weight: 15
draft: false
---

## Purpose

FCCom::`SetReqHeader()` sets a headername/headerval combination that will be sent with the next FCCom::[`HttpRequest()`]({{< ref "httprequest.md" >}}) call.

## Usage

```text
ret = FCCom::SetReqHeader(<connident>,<headername>,<headerval>);
```

## Arguments

integer `<connident>` - A connection id returned by an earlier call to FCCom:[`Alloc()`]({{< ref "alloc.md" >}}).

## Returns

- `0` — OK
- `-1` — Invalid `<connident>`

## Where Used

FCCom::`SetReqHeader()` can be called anytime you have a valid connection id.

## Example

```text
Example
```

## Description

FCCom::`SetReqHeader()` sets a headername/headerval combination that will be sent with the next FCCom::[`HttpRequest()`]({{< ref "httprequest.md" >}}) call. If `<headerval>` is "" then the single request header is removed from the list of headers that will be sent with the next FCCom::Httprequest.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})

