---
title: "AddNullObject()"
weight: 10
draft: false
---

## Purpose

FCJSon::`AddNullObject()` creates a new json object, adds a null value using `<key>` to the new object and adds the new object to an existing json object of `<key>`:`<value>` pairs using `<objkey>`.

## Usage

```text
rc = FCJSon::AddNullObject(<jsonident>,<objkey>,<key>);
```

## Arguments

- `integer <jsonident>` — The ident of the object being modified
- `alpha <objkey>` — The key to use for the new object in the object being
modified.
- `alpha <key>` — The key to use for the null value in the new object.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddNullObject()` can be called anytime you have a valid json ident to an object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`AddNullObject()` creates a new json object, adds a null value using `<key>` to the new object and adds the new object to an existing json object of `<key>`:`<value>` pairs using `<objkey>`.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

