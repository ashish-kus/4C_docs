---
title: "GetString()"
weight: 72
draft: false
---

## Purpose

FCJSon::`GetString()` gets an alpha value from an  object.

## Usage

```text
aval = FCJSon::GetString(<jsonident> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json  ident.
- `alpha <key>` — Optional.  The key to the alpha value in the object.

## Returns

- `alpha <aval>` — A 4c alpha value.
If this value is equal to "" it may indicate an error and the application
should call sys.get_extfn("FCJSon","LastError") to determine if it is an error
or a valid value.
- `-1` — Error

## Where Used

FCJSon::`GetString()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetString()` gets an alpha value from a JSon object. If the object identified by `<jsonident>` is a json string object and not a json object of `<key>`:`<value>` pairs, then no key is used. The normal case though is where `<jsonident>` identifies an object of "`<key>`","`<value>`" pairs and the string you are getting is in one of these pairs. When this is the case you must specify the `<key>` parameter to FCJSon::`GetString()`

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

