# ArrayAddIntObject()

## Purpose

FCJSon::`ArrayAddIntObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds an integer value to this object using `<ikey>` and adds this object to the end of an existing json array.

## Usage

```text
rc = FCJSon::ArrayAddIntObject(<jsonident>,<key>,<ival>);
```

## Arguments

- `integer <jsonident>` — An ident to a json array object
- `alpha <key>` — The key to use for `<ival>` in the new json object
- `integer or int64 <ival>` — The value to assign to the integer value

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddIntObject()` can be called anytime you have an ident to a json array object.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddIntObject()` creates a new JSon object of `<key>`:`<value>` pairs, adds an integer value to this object using `<ikey>` and adds this object to the end of an existing json array.

## Bugs/Features/Comments

int64 values are only supported in versions 6.7.3-01 and later

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


