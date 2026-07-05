---
title: "ArrayAddDoubleObject()"
weight: 42
draft: false
---

## Purpose

FCJSon::`ArrayAddDoubleObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a double value to this object using `<dkey>` and adds this object to the end of an existing json array.

## Usage

```text
rc = FCJSon::ArrayAddDoubleObject(<jsonident>,<dkey>,<fval or dpyval> [, <dpyval>]);
```

## Arguments

- `integer <jsonident>` — An ident to a json array object
- `alpha <dkey>` — The key to use for `<dval>` in the new json object
- `float or alpha <fval or dpyval>` — The value to assign to the double value in the new object.
See notes below about this argument and 4csrvr versions.
- `alpha <dpyval>` — An optional string to use when outputting.
This value will usually be contructed from a sys.fmt_float() call.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddDoubleObject()` can be called anytime you have an ident to a json array object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddDoubleObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a double value to this object using `<dkey>` and adds this object to the end of an existing json array.

## Bugs/Features/Comments

4csrvr version 6.7.3-01 and later allow the `<fval or dpyval>` argument to be an alpha represenation of the double value and it is interpreted as both the value to store into the double object and the value to display when the json object is output to a file or 4c field. In this case, it is not necessary to specify the `<dpyval>` as a separate argument since both the double value and the display value are set with this single argument

Versions earlier than 6.7.3-01 must pass a float type for this argument and must specify the `<dpyval>` argument if the display value when outputting should be different than the default formatting used by the json-c library.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

