# AddIntObject()

## Purpose

FCJSon::`AddIntObject()` creates a new json object, adds an integer value using `<ikey>` to the new object and adds the new object to an existing json object of `<key>`:`<value>` pairs using `<objkey>`.

## Usage

```text
rc = FCJSon::AddIntObject(<jsonident>,<objkey>,<key>,<ival>);
```

## Arguments

- `integer <jsonident>` — The ident of the object being modified
- `alpha <objkey>` — The key to use for the new object in the object being
modified.
- `alpha <key>` — The key to use for the integer value in the new object.
- `integer or int64 <ival>` — The value to assign to the integer value in the new object.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`AddIntObject()` can be called anytime you have a valid json ident to an object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`AddIntObject()` creates a new json object, adds an integer value using `<ikey>` to the new object and adds the new object to an existing json object of `<key>`:`<value>` pairs using `<objkey>`.

## Bugs/Features/Comments

int64 values are only supported in versions 6.7.3-01 and later

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


