# ArrayPutInt()

## Purpose

FCJSon::`ArrayPutInt()` puts a simple integer value at a specific index in a json array.

## Usage

```text
rc = FCJSon::ArrayPutInt(<jsonident>,<arrayidx>,<ival>);
```

## Arguments

- `integer <jsonident>` — Ident of the array being modified
- `integer <arrayidx>` — The index into the array to put the integer value.
- `integer or int64 <ival>` — The integer value to put in the array.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutInt()` can be called anytime you have a valid ident to a json array.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutInt()` puts a simple integer value at a specific index in a json array. If an object already exists at `<arrayidx>` it is replaced. If necessary, the array will be extended with nulls so that it is at least `<arrayidx>` + 1 in length.

## Bugs/Features/Comments

int64 values are only supported in versions 6.7.3-01 and later

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


