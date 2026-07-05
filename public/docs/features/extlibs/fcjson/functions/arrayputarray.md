# ArrayPutArray()

## Purpose

FCJSon::`ArrayPutArray()` puts an array object at a specified index in another array object.

## Usage

```text
rc = FCJSon::ArrayPutArray(<arrayident0>,<arrayidx>,<arrayident1>);
```

## Arguments

- `integer <arrayident0>` — The array being modified
- `integer <arrayidx>` — The exact index to put the array object at
- `integer <arrayident1>` — The array object to put

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`ArrayPutArray()` can be called anytime you have two different arrayidents.

## Example

```text
Example
```

## Description

FCJSon::`ArrayPutArray()` puts an array object at a specified index in another array object. If there is already an object at `<arrayidx>`, it is replaced by the array object. If necessary, the array being modified is extended with nulls.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


