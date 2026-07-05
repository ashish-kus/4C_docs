# ArrayAddObject()

## Purpose

FCJSon::`ArrayAddObject()` adds an fcjson object to the end of an array.

## Usage

```text
rc = FCJSon::ArrayAddObject(<jsonident0>,<jsonident1>);
```

## Arguments

- `integer <jsonident0>` — Ident of the array being modified
- `integer <jsonident1>` — The integer ident of the object being added.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddObject()` can be called anytime you have a valid ident to a json array and a valid ident to another json object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddObject()` adds an fcjson object to the end of an array. The object being added to the end of the array can be either an object of `<key>`:`<value>` pairs or an array object.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


