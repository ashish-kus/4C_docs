---
title: "AddString()"
weight: 12
draft: false
---

## Purpose

FCJSon::`AddString()` adds an alpha `<key>`:`<value>` pair to a json object.

## Usage

```text
rc = FCJSon::AddString(<jsonident>,<akey>,<aval>);
```

## Arguments

- `integer <jsonident>` — The ident of the object being modified
- `alpha <akey>` — The key to use for the alpha value
- `alpha <aval>` — The value to assign to the string.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddString()` can be called anytime you have a valid json ident to an object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`AddString()` adds an alpha `<key>`:`<value>` pair to a json object.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

