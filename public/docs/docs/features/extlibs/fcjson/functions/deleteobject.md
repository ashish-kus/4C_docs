# DeleteObject()

## Purpose

FCJSon::`DeleteObject()` deletes an object by key from it's parent.

## Usage

```text
rc = FCJSon::DeleteObject(<jsonident>,<key>);
```

## Arguments

- `integer <jsonident>` — the jsonident of the parent object
- `alpha <key>` — the key to delete from the parent object

## Returns

integer `<rc>`
- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`DeleteObject()` can be called anytime that you have a valid jsonident of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`DeleteObject()` deletes an object by key from it's parent. It is not an error if `<key>` does not exist in the object.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


