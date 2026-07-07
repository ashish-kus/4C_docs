---
title: "ArrayAddBoolObject()"
weight: 17
draft: false
---

## Purpose

FCJSon::`ArrayAddBoolObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a boolean value to this object using `<bkey>` and adds this object to the end of an existing json array.

## Usage

```text
rc = FCJSon::ArrayAddBoolObject(<jsonident>,<bkey>,<bval>);
```

## Arguments

- `integer <jsonident>` — An ident to a json array object
- `alpha <bkey>` — The key to use for `<bval>` in the new json object
- `integer <bval>` — The value to assign to the boolean
Use 0 for false and 1 for true

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddBoolObject()` can be called anytime you have an ident to a json array object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddBoolObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a boolean value to this object using `<bkey>` and adds this object to the end of an existing json array.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

