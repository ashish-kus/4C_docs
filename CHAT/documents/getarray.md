---
title: "GetArray()"
weight: 64
draft: false
---

## Purpose

FCJSon::`GetArray()` returns the jsonident of an array object array.

## Usage

```text
jsonident1 = FCJSon::GetArray(<jsonident0> [, <key> ]);
```

## Arguments

- `integer <jsonident0>` — A valid json object identifier.
- `alpha <key>` — Optional.
The key to the array object in the json object identified by jsonident0.

## Returns

- `>= 0` — A json identifier for the array.
- `< 0` — Error

## Where Used

FCJSon::`GetArray()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetArray()` returns the jsonident of an array embedded in an FCJSon object.

You will normally use FCJSon::`GetArray()` when you want to extract an array from a JSon object that is made up of `<key>`:`<value>` pairs. In this case it is necessary to use the optional "`<key>`" argument to get the array.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

