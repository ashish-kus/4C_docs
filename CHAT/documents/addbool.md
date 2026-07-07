---
title: "AddBool()"
weight: 3
draft: false
---

## Purpose

FCJSon::`AddBool()` adds a boolean `<key>`:`<value>` pair to a json object.

## Usage

```text
rc = FCJSon::AddBool(<jsonident>,<bkey>,<bval>);
```

## Arguments

- `integer <jsonident>` — The ident of the object being modified
- `alpha <bkey>` — The key to use for the boolean value
- `integer <bval>` — The value to assign to the boolean.
O for false, 1 for true

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddBool()` can be called anytime you have a valid json ident to an object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`AddBool()` adds a boolean `<key>`:`<value>` pair to a json object.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

