---
title: "ArrayGetObject()"
weight: 31
draft: false
---

## Purpose

FCJSon::`ArrayGetObject()` gets a json object from an array object.

## Usage

```text
jsonident1 = FCJSon::ArrayGetObject(<jsonident0>,<arrayidx> [, <key> ]);
```

## Arguments

- `integer <jsonident0>` — A valid json array ident.
- `integer <arrayidx>` — The 0 based index into the json array.
- `alpha <key>` — Optional.
Use `<key>` if the object at `<arrayidx>` is a json object of `<key>`:`<value>`
pairs and it contains any item identified by `<key>`.
If the object in the array at idx arrayidx is the object you want, then
you should not specify `<key>` when calling FCCom::ArrayGetObject()

## Returns

- `>= 0` — A valid json identifier to some type of json object.
- `-1` — Error

## Where Used

FCJSon::`ArrayGetObject()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetObject()` gets an object from an array object or from a json object in an array. When getting the object directly from the array, no `<key>` should be specified. When getting the value from a json object embedded in the array, you must specify the `<key>` parameter to FCJSon::`ArrayGetObject()`.

The jsonident returned is a valid json object ident, but it may refer to any type of json object and not just a json object of `<key>`:`<value>` pairs. So be aware of what type of object you have and avoid using it where it is not applicable.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

