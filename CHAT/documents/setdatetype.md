---
title: "sys.set_datetype()"
description: "allows you to set the default way that 4"
weight: 276
draft: false
---

## Purpose

`sys.set_datetype()` allows you to set the default way that 4C interprets date input.

## Usage

```text
ret = sys.set_datetype(<datetype>);
```

## Arguments

- `alpha <datetype>` — Must be "AMERICAN" or "EUROPEAN" only.

## Returns

int `<ret>`
- `0` — OK
- `-1` — `<datetype>` invalid.

## Where Used

`sys.set_datetype()` can be called from anywhere. However, it probably will only be called once in a 4C session in some sort of startup program.

## Description

`sys.set_datetype()` allows you to set the 4C date input format to be either American format or European format. There is an environment variable that also controls this. It is XLDATETYPE and can the values "AMERICAN" or "EUROPEAN" also. If never set by the environment variable or through `sys.set_datetype()`, 4C assumes American date input format.

## Bugs/Features/Comments

This does not affect the way that dates are displayed. If you have a program that needs to display dates in American and in European format, you should define your own date data type, and change the format according to site. Of course, programs will need to be recompiled.

## See Also

[`sys.get_datetype()`]({{< ref "getdatetype.md" >}})

Back to Top

