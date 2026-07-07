---
title: "AddInt()"
weight: 7
draft: false
---

## Purpose

FCJSon::`AddInt()` adds an integer/int64 `<key>`:`<value>` pair to a json object.

## Usage

```text
rc = FCJSon::AddInt(<jsonident>,<key>,<ival>);
```

## Arguments

- `integer <jsonident>` — The ident of the object being modified
- `alpha <key>` — The key to use for the integer value
- `integer or int64 <ival>` — The value to assign to the integer.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddInt()` can be called anytime you have a valid json ident to an object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`AddInt()` adds an integer `<key>`:`<value>` pair to a json object.

## Bugs/Features/Comments

int64 values are only supported in versions 6.7.3-01 and later

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

