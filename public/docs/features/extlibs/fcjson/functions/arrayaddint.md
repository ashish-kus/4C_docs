# ArrayAddInt()

## Purpose

FCJSon::`ArrayAddInt()` adds a simple integer value to the end of an array

## Usage

```text
rc = FCJSon::ArrayAddInt(<jsonident>,<ival>);
```

## Arguments

- `integer <jsonident>` — Ident of the array being modified
- `integer or  int64 <ival>` — The integer value to add to the array.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayAddInt()` can be called anytime you have a valid ident to a json array.

## Example

```text
Example
```

## Description

FCJSon::`ArrayAddInt()` adds a simple integer value to the end of an array

## Bugs/Features/Comments

int64 values are only supported in versions 6.7.3-01 and later

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


