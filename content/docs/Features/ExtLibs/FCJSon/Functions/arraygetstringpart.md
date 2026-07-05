---
title: "ArrayGetStringPart()"
weight: 34
draft: false
---

## Purpose

FCJSon::`ArrayGetStringPart()` gets a partial alpha value from an array object.

## Usage

```text
aval = FCJSon::ArrayGetStringPart(<jsonident>,<arrayidx>, <stridx> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json array ident.
- `integer <arrayidx>` — The 0 based index into the json array.
- `integer <stridx>` — The 0 based index into the string to rtn
- `alpha <key>` — Optional.
Use `<key>` if the object at `<arrayidx>` is a json object of `<key>`:`<value>`
pairs and it contains an alpha identified by `<key>`.
If the object in the array at idx arrayidx is an alpha value, then
you should not specify `<key>` when calling FCCom::ArrayGetStringPart()

## Returns

- `alpha <aval>` — A 4c alpha value.
If this value is equal to "", then there is nothing left in the string to return.

## Where Used

FCJSon::`ArrayGetStringPart()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetStringPart()` gets a partial alpha value from an array object or from an json object in an array. When getting the value directly from the array, no `<key>` should be specified. When getting the value from a json object embedded in the array, you must specify the `<key>` parameter to FCJSon::`ArrayGetStringPart()`.

The value returned will be truncated to fit in `<aval>`

The purpose of this function is to allow retrieval of alpha values that exceed the maximum 4C alpha length.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

