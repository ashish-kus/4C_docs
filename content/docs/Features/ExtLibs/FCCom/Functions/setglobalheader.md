---
title: "SetGlobalHeader()"
weight: 13
draft: false
---

## Purpose

FCCom::`SetGlobalHeader()` sets the value for a global request header.

## Usage

```text
ret = FCCom::SetGlobalHeader(<connident>,<headername>,<headerval>);
```

## Arguments

integer `<connident>` - The connection id returned by an earlier call to FCCom::[`Alloc()`]({{< ref "alloc.md" >}}).

## Returns

- `0` — OK
- `-1` — Invalid `<connident>`

## Where Used

FCCom::`SetGlobalHeader()` can be called anytime that you have a valid connection id to use.

## Example

```text
Example
```

## Description

FCCom::`SetGlobalHeader()` sets the value for a global request header. Setting the value of global header to "" removes it from the list of global headers sent with every request.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})

