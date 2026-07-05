# ArrayAddNullObject()

## Purpose

FCJSon::`ArrayAddNullObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a null value to this object using `<key>` and adds this object to the end of an existing json array.

## Usage

```text
rc = FCJSon::ArrayAddNullObject(<jsonident>,<key>);
```

## Arguments

- `integer <jsonident>` — An ident to a json array object
- `alpha <key>` — The key to use for the null value in the new json object

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddNullObject()` can be called anytime you have an ident to a json array object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddNullObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds a null value to this object using `<key>` and adds this object to the end of an existing json array.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


