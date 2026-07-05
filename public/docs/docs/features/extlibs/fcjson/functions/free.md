# Free()

## Purpose

FCJSon::`Free()` frees the resources associated with one json object

## Usage

```text
ret = FCJSon::Free(<jsonident>);
```

## Arguments

integer `<jsonident>` - A valid json object identifier.

## Returns

0 on success, -1 if `<jsonident>` is invalid.

## Where Used

FCJSon::`Free()` can be called from anywhere as long as you have a valid `<jsonident>`

## Example

```text
Example
```

## Description

FCJSon::`Free()` frees the resources associated with one json object. Once freed, the `<jsonident>` cannot be used in calls to the FCJSon library.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


