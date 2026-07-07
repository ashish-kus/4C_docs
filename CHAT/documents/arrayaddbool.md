---
title: "ArrayAddBool()"
weight: 16
draft: false
---

## Purpose

FCJSon::`ArrayAddBool()` adds a simple boolean value to the end of an array

## Usage

```text
rc = FCJSon::ArrayAddBool(<jsonident>,<bval>);
```

## Arguments

- `integer <jsonident>` — Ident of the array being modified
- `integer <bval` — The boolean value to add to the array.
Use 0 for false and 1 for true

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddBool()` can be called anytime you have a valid ident to a json array.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddBool()` adds a simple boolean value to the end of an array

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

