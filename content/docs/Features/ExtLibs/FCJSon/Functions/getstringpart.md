---
title: "GetStringPart()"
weight: 74
draft: false
---

## Purpose

FCJSon::`GetStringPart()` gets a partial alpha value from an  object.

## Usage

```text
aval = FCJSon::GetStringPart(<jsonident>, <stridx> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json  ident.
- `integer <stridx>` — The starting index of the string to get the partial value
- `alpha <key>` — Optional.  The key to the alpha value in the object.

## Returns

- `alpha <aval>` — A 4c alpha value.
If this value is equal to "", then there is nothing left in the string starting at index `<stridx>`

## Where Used

FCJSon::`GetStringPart()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetStringPart()` gets a partial alpha value from a JSon object. If the object identified by `<jsonident>` is a json string object and not a json object of `<key>`:`<value>` pairs, then no key is used. The normal case though is where `<jsonident>` identifies an object of "`<key>`","`<value>`" pairs and the string you are getting is in one of these pairs. When this is the case you must specify the `<key>` parameter to FCJSon::`GetStringPart()`

The value returned will be truncated to fit in `<aval>`

The purpose of this function is to allow retrieval of alpha values that exceed the maximum 4C alpha length.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

