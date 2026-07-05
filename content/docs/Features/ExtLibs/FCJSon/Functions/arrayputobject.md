---
title: "ArrayPutObject()"
weight: 47
draft: false
---

## Purpose

FCJSon::`ArrayPutObject()` puts an fcjson object at a specific index in a json array.

## Usage

```text
rc = FCJSon::ArrayPutObject(<jsonident0>,<arrayidx>,<jsonident1>);
```

## Arguments

- `integer <jsonident0>` — Ident of the array being modified
- `integer <arrayidx>` — The index into the array to put the object.
- `integer <jsonident1>` — The integer ident of the object being put
into the array.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutObject()` can be called anytime you have a valid ident to a json array and a valid ident to another json object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutObject()` puts an fcjson object at a specific index in a json array. The object being put into the array can be either an object of `<key>`:`<value>` pairs or an array object.

If an object alread exists at `<arrayidx>` it is replaced.

If necessary the array will be extended with nulls so that it is at least `<arrayidx>` + 1 in length.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

