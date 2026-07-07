---
title: "GetKey()"
weight: 70
draft: false
---

## Purpose

FCJSon::`GetKey()` returns the key from the current KeyList at idx.

## Usage

```text
akey = FCJSon::GetKey(<jsonident>,<idx>);
```

## Arguments

- `integer <jsonident>` — A valid json ident referencing a json object with
an open KeyList.
- `integer<idx>` — Index into KeyList

## Returns

- `alpha <akey>` — The key at idx
- `""` — Error

## Where Used

FCJSon::`GetKey()` can be called anytime you have a valid jsonident with an open KeyList.

## Example

```text
Example
```

## Description

FCJSon::`GetKey()` returns the key from the current KeyList at idx.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

