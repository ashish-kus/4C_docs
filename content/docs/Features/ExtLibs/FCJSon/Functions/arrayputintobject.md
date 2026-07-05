---
title: "ArrayPutIntObject()"
weight: 44
draft: false
---

## Purpose

FCJSon::`ArrayPutIntObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds an integer value to this object using `<ikey>` and puts this object at a specific index in an existing json array.

## Usage

```text
rc = FCJSon::ArrayPutIntObject(<arrayident>,<arrayidx>,<key>,<ival>);
```

## Arguments

- `integer <arrayident>` — An ident to a json array object
- `integer <arrayidx>` — The index into the array to put the new object
- `alpha <key>` — The key to use for `<ival>` in the new json object
- `integer or int64 <ival>` — The value to assign to the integer value

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutIntObject()` can be called anytime you have an ident to a json array object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutIntObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds an integer value to this object using `<ikey>` and puts this object at a specific index in an existing json array.

If an object already exists at `<arrayidx>` it is replaced by the new object.

If necessary the array will be extented with nulls so that it is at least `<arrayidx>` + 1 in length.

## Bugs/Features/Comments

int64 values are only supported in versions 6.7.3-01 and later

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

