# GetArrayLen()

## Purpose

FCJSon::`GetArrayLen()` returns the number of items in an array object

## Usage

```text
nitems = FCJSon::GetArrayLen(<jsonident>);
```

## Arguments

- `integer <jsonident>` — A valid json ident.

## Returns

- `>= 0` — The number of items in the array
- `-1` — Error

## Where Used

FCJSon::`GetArrayLen()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`GetArrayLen()` returns the number of items in an array object. A json array can have 0 items, so 0 is a valid return. A negative return indicates an error which most likely means the jsoanident is invalid or does not refer to an array object.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


