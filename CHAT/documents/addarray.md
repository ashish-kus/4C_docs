---
title: "AddArray()"
weight: 1
draft: false
---

## Purpose

FCJSon::`AddArray()` adds an array object using a `<key>` to an FCJSon object of `<key>`:`<value>` pairs.

## Usage

```text
rc = FCJSon::AddArray(<jsonident>,<key>,<arrayident>);
```

## Arguments

- `integer <jsonident>` — The ident of the object being modified
- `alpha <key>` — Key to use for the array object being added.
- `integer <arrayident>` — The jsonident of the array object.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddArray()` can be called anytime you have a jsonident to an object with `<key>`:`<value>` pairs and an array ident.

## Example

```text
Example
```

## Description

FCJSon::`AddArray()` adds an array object using a `<key>` to an FCJSon object of `<key>`:`<value>` pairs.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

