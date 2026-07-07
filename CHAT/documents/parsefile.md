---
title: "ParseFile()"
weight: 78
draft: false
---

## Purpose

FCJSon::`ParseFile()` parses a JSon file and returns an integer id that can be used to make other FCJSon function calls.

## Usage

```text
jsonident = FCJSon::ParseFile(<fullpath>);
```

## Arguments

alpha `<fullpath>` - The fullpath name to the file on the 4csrvr machine to parse.

## Returns

- `< 0` — Error
- `>= 0` — An integer id that can be passed to other FCJSon routines.

## Where Used

FCJSon::`ParseFile()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`ParseFile()` parses a JSon file and returns an integer id that can be used to make other FCJSon function calls.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})

