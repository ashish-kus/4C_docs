---
title: "GetInt()"
weight: 69
draft: false
---

## Purpose

FCJSon::`GetInt()` gets an integer value from an  object.

## Usage

```text
ival = FCJSon::GetInt(<jsonident> [, <key> ]);
```

## Arguments

- `integer <jsonident>` — A valid json  ident.
- `alpha <key>` — Optional.  The key to the integer value in the object.

## Returns

- `int64 <ival>` — A 4c int64 value.
int64 return values are automatically converted to 32 bit integers on return if necessary.
If this value is equal to -1 it may indicate an error and the application
should call sys.get_extfn("FCJSon","LastError") to determine if it is an error
or a valid value.
- `-1` — Error

## Where Used

FCJSon::`GetInt()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetInt()` gets an integer value from a JSon object. If the object identified by `<jsonident>` is a json integer object and not a json object of `<key>`:`<value>` pairs, then no key is used. The normal case though is where `<jsonident>` identifies an object of "`<key>`","`<value>`" pairs and the integer you are getting is in one of these pairs. When this is the case you must specify the `<key>` parameter to FCJSon::`GetInt()`

## Bugs/Features/Comments

Only versions 6.7.3-01 and later return an int64 value. Earlier version return a 32 bit integer value.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

