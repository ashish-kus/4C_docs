---
title: "sys.rexp_match()"
description: "matches a regular expressio"
weight: 258
draft: false
---

## Purpose

`sys.rexp_match()` matches a regular expression

## Usage

```text
aval = sys.rexp_match(<text>,<rexp>,<rexpflags>);
```

## Arguments

- `alpha <text>` — The text to search for the regular expression in.
- `alpha <rexp>` — The regular expression
integer `<rexpflags>` -
Any combination of
REXP_DEFAULT
REXP_SIMPLE
REXP_IGNORECASE

## Returns

- `alpha <aval>` — The sub string in `<text>` that matched

## Where Used

`sys.rexp_match()` can be called from anywhere.

## Example

```text
demo.rexp.1 in the Demo app
```

## Description

`sys.rexp_match()` matches a regular expression in a string. If there is a match, then the return value is the string that matched and sys_ret is set to the index into `<text>` of the start of the match. If there is no match, then the return is an empty string and sys_ret is set to -1. You should check sys_ret to determine if an empty return string means there was not a match.

Requirements

4csrvr 5.0.6

## See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})

