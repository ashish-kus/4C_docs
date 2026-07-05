---
title: "ArrayAddArrayObject()"
weight: 15
draft: false
---

## Purpose

FCJSon::`ArrayAddArrayObject()` Creates a new object, adds an existing array to it using `<arraykey1>` and adds the new object to the end of an existing json array.

## Usage

```text
rc = FCJSon::ArrayAddArrayObject(<arrayident0>,<arraykey1>,<arrayident1>);
```

## Arguments

- `integer <arrayident0>` — Ident to the array being modified
- `alpha <arraykey1>` — The key to use in the new object for the array being
added.
- `<arrayident1>` — An ident for the array being added to the new object.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddArrayObject()` can be called anytime you have 2 valid json array idents.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddArrayObject()` Creates a new object, adds an existing array to it using `<arraykey1>` and adds the new object to the end of an existing json array.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

