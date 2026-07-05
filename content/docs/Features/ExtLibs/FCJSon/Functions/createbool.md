---
title: "CreateBool()"
weight: 54
draft: false
---

## Purpose

FCJSon::`CreateBool()` creates a new json boolean object initialized to either true or false and returns it's ident.

## Usage

```text
jsonident = FCJSon::CreateBool(<ival>);
```

## Arguments

- `integer <ival>` — initial value - use 0 for false, 1 for true

## Returns

- `integer <jsonident>` — The ident of the new json object

## Where Used

FCJSon::`CreateBool()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`CreateBool()` creates a new json boolean object initialized to either true or false and returns it's ident.

If the only reason for creating the bool object is to immediately add it to another object and then never use if for anything else, you should use one of FCJSon::[`ArrayAddBool()`]({{< ref "arrayaddbool.md" >}}), `FCJSonArrayPutBool()`, or FCJSon::[`AddBool()`]({{< ref "addbool.md" >}}) instead. It will create, initialize, and add it the other object using only one call.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

