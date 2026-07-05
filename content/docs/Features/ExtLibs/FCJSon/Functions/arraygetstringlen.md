---
title: "ArrayGetStringLen()"
weight: 33
draft: false
---

## Purpose

FCJSon::`ArrayGetStringLen()` returns the length of an alpha value from an array object.

## Usage

```text
len = FCJSon::ArrayGetStringLen(<jsonident>,<arrayidx> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json array ident.
- `integer <arrayidx>` — The 0 based index into the json array.
- `alpha <key>` — Optional.
Use `<key>` if the object at `<arrayidx>` is a json object of `<key>`:`<value>`
pairs and it contains an alpha identified by `<key>`.
If the object in the array at idx arrayidx is an alpha value, then
you should not specify `<key>` when calling FCCom::ArrayGetStringLen()

## Returns

- `integer <len>` — The length of the string in bytes, or -1 on error

## Where Used

FCJSon::`ArrayGetStringLen()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetStringLen()` gets the length of an alpha value from an array object or from an json object in an array. When getting the value directly from the array, no `<key>` should be specified. When getting the value from a json object embedded in the array, you must specify the `<key>` parameter to FCJSon::`ArrayGetStringLen()`.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

