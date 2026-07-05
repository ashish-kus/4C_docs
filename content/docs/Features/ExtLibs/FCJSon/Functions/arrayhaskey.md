---
title: "ArrayHasKey()"
weight: 36
draft: false
---

## Purpose

FCJSon::`ArrayHasKey()` returns an integer indicating whether an FCJSon object in an array has an item with a specific key.

## Usage

```text
rc = FCJSon::ArrayHasKey(<jsonident>,<arrayidx>,<key>);
```

## Arguments

- `integer <jsonident>` — A valid json object identifier
- `integer <arrayidx>` — index of object in array
- `alpha <key>` — The key to check for

## Returns

- `0` — Key does not exist
- `1` — Key does exist
- `-1` — Error

## Where Used

FCJSon::`ArrayHasKey()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayHasKey()` returns an integer indicating whether an FCJSon object in an array has an item with a specific key. The object in the array being checked must be a JSon object of `<key>`:`<value>` pairs.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

