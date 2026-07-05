---
title: "ParseString()"
weight: 79
draft: false
---

## Purpose

FCJSon::`ParseString()` parses a 4C alpha in JSon format and returns an integer id that can be used to make other FCJSon function calls.

## Usage

```text
jsonident = FCJSon::ParseString(<alphavar>);
```

## Arguments

alpha `<alphavar>` - The 4c variable with JSon content.

## Returns

- `< 0` — Error
- `>= 0` — An integer id that can be passed to other FCJSon routines.

## Where Used

FCJSon::`ParseString()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ParseString()` parses a 4C alpha variable with JSon content and returns an integer id that can be used to make other FCJSon function calls.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

