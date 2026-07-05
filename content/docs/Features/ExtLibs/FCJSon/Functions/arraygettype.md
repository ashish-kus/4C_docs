---
title: "ArrayGetType()"
weight: 35
draft: false
---

## Purpose

FCJSon::`ArrayGetType()` returns the datatype of a json object in an array

## Usage

```text
atype = FCJSon::ArrayGetType(<jsonident>,<arrayidx> [, <key>]);
```

## Arguments

- `integer <jsonident>` — A valid json object ident.
- `integer <arrayidx>` — Index of object in array
- `alpha <key>` — Optional.  If used, key to an item in the object at arrayidx

## Returns

- `alpha <aval>` — An alpha representation of the object's datatype.
Possible returns are:
"array" -
Object is an array
"bool" -
Object is a boolean
"double" -
Object is a double
"int" -
Object is an integer
"object" -
Object is json object made up of `<key>`:`<value>` pairs
"string" -
Object is a string
"null" -
The object exists but has no value
"" -
- `Error` — check sys_ret, sys.get_extfnopt("FCJSon","LastError"), and
sys.get_extfnopt("FCJSon","LastMessage");

## Where Used

FCJSon::`ArrayGetType()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ArrayGetType()` returns the datatype of a json object in an array

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

