---
title: "ArrayPutArrayObject()"
weight: 38
draft: false
---

## Purpose

FCJSon::`ArrayPutArrayObject()` Creates a new object, adds an existing array to it using `<arraykey1>` and puts the new object at a specific index in an existing json array.

## Usage

```text
rc = FCJSon::ArrayPutArrayObject(<arrayident0>,<arrayidx0>,<arraykey1>,<arrayident1>);
```

## Arguments

- `integer <arrayident0>` — Ident to the array being modified
- `integer <arrayidx0>` — Index into array that new object will be put at.
- `alpha <arraykey1>` — The key to use in the new object for the array being
added.
- `<arrayident1>` — An ident for the array being added to the new object.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutArrayObject()` can be called anytime you have 2 valid json array idents.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutArrayObject()` Creates a new object, adds an existing array to it using `<arraykey1>` and puts the new object at a specific index in an existing json array. If there already is an object at `<arrayidx0>`, it is replaced by the new object. If necessary, the array identified `<arrayident0>` will be extended with nulls so that it's length is at least `<arrayidx0>` + 1.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

