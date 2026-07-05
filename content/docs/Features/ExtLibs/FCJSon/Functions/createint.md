---
title: "CreateInt()"
weight: 56
draft: false
---

## Purpose

FCJSon::`CreateInt()` creates a new initialized json integer object and returns it's ident.

## Usage

```text
jsonident = FCJSon::CreateInt(<ival>);
```

## Arguments

- `integer or int64 <ival>` — initial integer value

## Returns

- `integer <jsonident>` — The ident of the new json object

## Where Used

FCJSon::`CreateInt()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`CreateInt()` creates a new initialized json integer object returns it's ident.

If the only reason for creating the integer object is to immediately add it to another object and then never use if for anything else, you should use one of FCJSon::[`ArrayAddInt()`]({{< ref "arrayaddint.md" >}}), `FCJSonArrayPutInt()`, or FCJSon::[`AddInt()`]({{< ref "addint.md" >}}) instead. Those functions will create, initialize, and add it the other object using only one call.

## Bugs/Features/Comments

int64 values are only supported in versions 6.7.3-01 and later

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

