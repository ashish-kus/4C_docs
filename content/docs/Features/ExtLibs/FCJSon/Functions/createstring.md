---
title: "CreateString()"
weight: 59
draft: false
---

## Purpose

FCJSon::`CreateString()` creates a new initialized json string object and returns it's ident.

## Usage

```text
jsonident = FCJSon::CreateString(<aval>);
```

## Arguments

- `alpha <aval>` — initial alpha value

## Returns

- `integer <jsonident>` — The ident of the new json object

## Where Used

FCJSon::`CreateString()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`CreateString()` creates a new initialized json string object returns it's ident.

If the only reason for creating the string object is to immediately add it to another object and then never use if for anything else, you should use one of FCJSon::[`ArrayAddString()`]({{< ref "arrayaddstring.md" >}}), `FCJSonArrayPutString()`, or FCJSon::[`AddString()`]({{< ref "addstring.md" >}}) instead. Those functions will create, initialize, and add it the other object using only one call.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

