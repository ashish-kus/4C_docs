---
title: "GetStringLen()"
weight: 73
draft: false
---

## Purpose

FCJSon::`GetStringLen()` gets the length of an alpha value in a JSon object.

## Usage

```text
len = FCJSon::GetStringLen(<jsonident> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json  ident.
- `alpha <key>` — Optional.  The key to the alpha value in the object.

## Returns

- `integer <len>` — The length of the string, -1 if id/key is not a string.

## Where Used

FCJSon::`GetStringLen()` can be called from anywhere as long as you have a json ident

## Example

```text
Example
```

## Description

FCJSon::`GetStringLen()` gets the length of an ialpha value from a JSon object. If the object identified by `<jsonident>` is a json string object and not a json object of `<key>`:`<value>` pairs, then no key is used. The normal case though is where `<jsonident>` identifies an object of "`<key>`","`<value>`" pairs and the string you are getting length of is in one of these pairs. When this is the case you must specify the `<key>` parameter to FCJSon::[`GetString()`]({{< ref "getstring.md" >}})

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

