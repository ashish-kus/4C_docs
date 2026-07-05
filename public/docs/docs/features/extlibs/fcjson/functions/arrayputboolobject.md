# ArrayPutBoolObject()

## Purpose

FCJSon::`ArrayPutBoolObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a boolean value to this object using `<bkey>` and puts this object at a specific index in an existing json array.

## Usage

```text
rc = FCJSon::ArrayPutBoolObject(<arrayident>,<arrayidx>,<bkey>,<bval>);
```

## Arguments

- `integer <arrayident>` — An ident to a json array object
- `integer <arrayidx>` — The index into the array to put the new object
- `alpha <bkey>` — The key to use for `<bval>` in the new json object
- `integer <bval>` — The value to assign to the boolean
Use 0 for false and 1 for true

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutBoolObject()` can be called anytime you have an ident to a json array object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutBoolObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a boolean value to this object using `<bkey>` and puts this object at a specific index in an existing json array. If an object already exists at `<arrayidx>` it is replaced by the new object. If necessary the array will be extented with nulls so that it is at least `<arrayidx>` + 1 in length.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


