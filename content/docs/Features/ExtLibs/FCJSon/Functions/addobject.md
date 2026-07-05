---
title: "AddObject()"
weight: 11
draft: false
---

## Purpose

FCJSon::`AddObject()` adds an object `<key>`:`<value>` pair to a json object.

## Usage

```text
rc = FCJSon::AddObject(<jsonident0>,<key>,<jsonident1>);
```

## Arguments

- `integer <jsonident0>` — The ident of the object being modified
- `alpha <key>` — The key to use for the object being added
- `integer <jsonident1>` — The json identifier of the object being added.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddObject()` can be called anytime you have a valid json ident to an object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`AddObject()` adds an object `<key>`:`<value>` pair to a json object.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

