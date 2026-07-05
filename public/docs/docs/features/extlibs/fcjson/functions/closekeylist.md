# CloseKeyList()

## Purpose

FCJSon::`CloseKeyList()` closes th KeyList for one json object and frees the resources that it is using.

## Usage

```text
rc = FCJSon::CloseKeyList(<jsonident>);
```

## Arguments

- `integer <jsonident>` — A valid jsonident that refers to an object
with an open KeyList.

## Returns

- `0` — OK
- `-1` — `<jsonident>` is invalid.

## Where Used

FCJSon::`CloseKeyList()` can be called anytime you have a valid `<jsonident>` referencing an object with an open KeyList.

## Example

```text
Example
```

## Description

FCJSon::`CloseKeyList()` closes th KeyList for one json object and frees the resources that it is using. Though not absolutely necessary, it is good practice to explicitly close any KeyList that the application opens. However, the FCJSon library will automatically close any open KeyList when the FCJSon object is freed.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


