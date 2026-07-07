---
title: "FreeAll()"
weight: 63
draft: false
---

## Purpose

FCJSon::`FreeAll()` frees all currently allocated FCJSon objects.

## Usage

```text
count = FCJSon::FreeAll();
```

## Arguments

None

## Returns

- `integer <count>` — The actual number of objects freed.

## Where Used

FCJSon::`freeall()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`FreeAll()` frees all currently allocated FCJSon objects. This may be easier than calling FCJSon::Free(`<jsonident>`) for each object separately but should only be used when you know that no other 4C program being run by the current 4csrvr process is using any FCJSon objects. After calling FCJSon:`FreeAll()` no  FCJSon function that needs a `<jsonident>` can be called until a new FCJSon function has returned a valid `<jsonident>`.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

