---
title: "CreateArray()"
weight: 53
draft: false
---

## Purpose

FCJSon::`CreateArray()` creates a new FCJSon array object that will hold other json objects, simple and complex.

## Usage

```text
<jsonident> = FCJSon::CreateArray();
```

## Arguments

None

## Returns

integer `<jsonident>`
- `>= 0` — A json ident that can be used in other FCJSon functions that
need an array jsonident.

## Where Used

FCJSon::`CreateArray()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`CreateArray()` creates a new FCJSon array that will hold other json objects, simple and complex. It returns an ident that is used in many different FCJSon functions. Initially this array will be empty and it will not be embedded in any other objects.

You can add this array to a different json array using FCJSon::[`ArrayAddArray()`]({{< ref "arrayaddarray.md" >}}), FCJSon::[`ArrayAddObject()`]({{< ref "arrayaddobject.md" >}}), FCJSon::[`ArrayPutArray()`]({{< ref "arrayputarray.md" >}}), or FCJSon::[`ArrayPutObject()`]({{< ref "arrayputobject.md" >}}).

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

