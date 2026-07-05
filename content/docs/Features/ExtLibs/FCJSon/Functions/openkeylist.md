---
title: "OpenKeyList()"
weight: 77
draft: false
---

## Purpose

FCJSon::`OpenKeyList()` creates a list of keys from an FCJSon object and returns the count of keys in the list.

## Usage

```text
count = FCJSon::OpenKeyList(<jsonident>);
```

## Arguments

- `integer <jsonident>` — A valid jsonident for an object made up of
`<key>`:`<value>` pairs.

## Returns

- `integer <count>` — The count of `<key>`:`<value>` pairs in the json object.

## Where Used

FCJSon::`OpenKeyList()` can be called anytime you have a valid ident for a json object of `<key>`:`<value>` pairs.

## Example

```text
Example
```

## Description

FCJSon::`OpenKeyList()` creates a list of keys from an FCJSon object and returns the count of keys in the list. The json object must be an object with `<key>`:`<value>` pairs. Once open, the application can fetch any of the keys in the list using FCJSon::[`GetKey()`]({{< ref "getkey.md" >}}).

If the json object already has an open KeyList, it is closed first and the resources it is using are freed.

When no longer needed, the application should call FCJSon::[`CloseKeyList()`]({{< ref "closekeylist.md" >}}) which will free resources used by the KeyList. More recent versions of this library will free any KeyList that has not been freed when the object is freed by either FCJSon:[`Free()`]({{< ref "free.md" >}}) or FCJSon::[`FreeAll()`]({{< ref "freeall.md" >}})

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

