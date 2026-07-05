# ArrayPutBool()

## Purpose

FCJSon::`ArrayPutBool()` puts a simple boolean value at a specific index in a json array.

## Usage

```text
rc = FCJSon::ArrayPutBool(<jsonident>,<arrayidx>,<bval>);
```

## Arguments

- `integer <jsonident>` — Ident of the array being modified
- `integer <arrayidx>` — The index into the array to put the boolean value.
- `integer <bval` — The boolean value to put in the array.
Use 0 for false and 1 for true

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutBool()` can be called anytime you have a valid ident to a json array.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutBool()` puts a simple boolean value at a specific index in a json array. If an object already exists at `<arrayidx>` it is replaced. If necessary, the array will be extended with nulls so that it is at least `<arrayidx>` + 1 in length.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


