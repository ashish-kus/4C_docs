# ArrayPutString()

## Purpose

FCJSon::`ArrayPutString()` puts a simple alpha value at a specific index in a json array.

## Usage

```text
rc = FCJSon::ArrayPutString(<jsonident>,<arrayidx>,<aval>);
```

## Arguments

- `integer <jsonident>` — Ident of the array being modified
- `integer <arrayidx>` — The index into the array to put the alpha value.
- `alpha <aval>` — The alpha value to put in the array.

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutString()` can be called anytime you have a valid ident to a json array.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutString()` puts a simple array value at a specific index in a json array. If an object already exists at `<arrayidx>` it is replaced. If necessary, the array will be extended with nulls so that it is at least `<arrayidx>` + 1 in length.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


