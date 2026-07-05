---
title: "sys.cbp_getipaddr()"
description: "returns the ipaddr of th"
weight: 26
draft: false
---

## Purpose

`sys.cbp_getipaddr()` returns the ipaddr of the 4csrvr where 4C data was copied from.

## Usage

```text
ipaddr = sys.cbp_getipaddr();
```

## Arguments

None

## Returns

alpha `<ipaddr>`
- `""` — No 4C Format Paste Available.
- `ipaddr` — The ipaddr of 4csrvr originating the copy.

## Where Used

`sys.cbp_getipaddr()` can be called from anywhere as long as at least one paste operation has been done by the user.

## Description

`sys.cbp_getipaddr()` returns the ipaddr of the 4csrvr where 4C data was copied from. If the paste did not originate from a 4C application, then the ip address will not be known and an empty string will be returned.

## See Also

Cut/Copy/Paste Overview

[`sys.cbp_getappname()`]({{< ref "cbpgetappname.md" >}})

[`sys.cbp_getport()`]({{< ref "cbpgetport.md" >}})

Back to Top

## See Also

- [Cut/Copy/Paste Overview]({{< ref "../Features/cutpaste.md" >}})
- [sys.cbp_getappname()]({{< ref "cbpgetappname.md" >}})
- [sys.cbp_getport()]({{< ref "cbpgetport.md" >}})

