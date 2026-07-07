---
title: "AddBoolObject()"
weight: 4
draft: false
---

## Purpose

FCJSon::`AddBoolObject()` creates a new json object, adds a boolean value using `<bkey>` to the new object and adds the new object to an existing json object of `<key>`:`<value>` pairs using `<objkey>`.

## Usage

```text
rc = FCJSon::AddBoolObject(<jsonident>,<objkey>,<bkey>,<bval>);
```

## Arguments

- `integer <jsonident>` — The ident of the object being modified
- `alpha <objkey>` — The key to use for the new object
- `alpha <bkey>` — The key to use for the boolean value in the new object.
- `integer <bval>` — The value to assign to the boolean.
O for false, 1 for true

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddBoolObject()` can be called anytime you have a valid json ident to an object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`AddBoolObject()` creates a new json object, adds a boolean value using `<bkey>` to the new object and adds the new object to an existing json object of `<key>`:`<value>` pairs using `<objkey>`.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

