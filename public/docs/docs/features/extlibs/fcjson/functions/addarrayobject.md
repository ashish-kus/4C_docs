# AddArrayObject()

## Purpose

FCJSon::`AddArrayObject()` Creates a new object, adds an existing json array to it using `<arraykey>` and adds the new object to another existing json object using `<objkey>`

## Usage

```text
rc = FCJSon::AddArrayObject(<jsonident>,<objkey>,<arraykey>,<arrayident>);
```

## Arguments

- `integer <jsonident>` — Ident to the object being modified
- `alpha <objkey>` — The key to use for the new object being added to
the json object identified by `<jsonident>`.
- `alpha <arraykey>` — The key to use in the new object for the array.
- `<arrayident>` — An ident for the array being added to the new object.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddArrayObject()` can be called anytime you have both a `<jsonident>` to an object that holds `<key>`:`<value>` pairs and an `<arrayident>` for a json array object.

## Example

```text
Example
```

## Description

FCJSon::`AddArrayObject()` Creates a new object, adds an existing array to it using `<arraykey>` and adds the new object to another existing json object using `<objkey>`

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


