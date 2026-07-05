---
title: "GetObject()"
weight: 71
draft: false
---

## Purpose

FCJSon::`GetObject()` gets a json object from a json object

## Usage

```text
jsonident1 = FCJSon::GetObject(<jsonident0> [, <key> ]);
```

## Arguments

- `integer <jsonident0>` — A valid json ident.
- `alpha <key>` — Optional.
Use `<key>` if the object identified by jsonident0 is a json object
of `<key>`:`<value>` pairs and it contains an item identified by `<key>`.
Even though this parameter is optional,
it makes no sense to call FCJSon::GetObject() without passing in the key
parameter.
Doing so just returns a new ident to the same original object.

## Returns

- `>= 0` — A valid json identifier to some type of json object.
- `-1` — Error, or possibly object exists but is null.

## Where Used

FCJSon::`GetObject()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetObject()` gets an object from ajson object, most likely made up of `<key>`:`<value>` pairs. When getting the value from a json object embedded in the array, you must specify the `<key>` parameter to FCJSon::`GetObject()`.

Even though the `<key>` parameter is optional, it makes no sense to call FCJSon::`GetObject()` without passing in the key parameter. Doing so just returns a new ident to the same original object.

The jsonident returned is a valid json object ident, but it may refer to any type of json object and not just a json object of `<key>`:`<value>` pairs. So be aware of what type of object you have and avoid using it where it is not applicable.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

