# ArrayAddStringObject()

## Purpose

FCJSon::`ArrayAddStringObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds an alpha value to this object using `<akey>` and adds this object to the end of an existing json array.

## Usage

```text
rc = FCJSon::ArrayAddStringObject(<jsonident>,<akey>,<aval>);
```

## Arguments

- `integer <jsonident>` — An ident to a json array object
- `alpha <akey>` — The key to use for `<aval>` in the new json object
- `alpha <aval>` — The value to assign to the string

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddStringObject()` can be called anytime you have an ident to a json array object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddStringObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds an alpha value to this object using `<akey>` and adds this object to the end of an existing json array.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


