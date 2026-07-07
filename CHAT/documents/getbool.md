---
title: "GetBool()"
weight: 66
draft: false
---

## Purpose

FCJSon::`GetBool()` gets a boolean value from a JSon object.

## Usage

```text
bval = FCJSon::GetBool(<jsonident> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid identifier for an FCJSon json object.
- `alpha <key>` — Optional.  The key to the bool value in the object.

## Returns

- `0` — false
- `1` — True
- `-1` — Error

## Where Used

FCJSon::`GetBool()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetBool()` gets a boolean value from a JSon object. If the object identified by `<jsonident>` is a json boolean object and not a json object of `<key>`:`<value>` pairs, then no key is used. The normal case though is where `<jsonident>` identifies an object of "`<key>`","`<value>`" pairs and the boolean you are getting is in one of these pairs. When this is the case you must specify the `<key>` parameter to FCJSon::`GetBool()`

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

