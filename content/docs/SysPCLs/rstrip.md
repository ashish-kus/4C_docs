---
title: "sys.r_strip()"
description: "strips all trailing <stripchar> characters from the end o"
weight: 263
draft: false
---

## Purpose

`sys.r_strip()` strips all trailing `<stripchar>` characters from the end of `<originalstring>`

## Usage

```text
<aret> = sys.r_strip(<originalstring>,<stripchar>);
```

## Arguments

- `alpha <originalstring>` — The alpha variable to strip trailing `<stripchar>`
characters from.
- `alpha <stripchar>` — A string of length 1 indicating the character that should
be stripped from then end of `<originalstring>`.

## Returns

- `alpha <aret>` — A copy of `<originalstring>` with the trailing `<stripchar>`
characters deleted.

## Where Used

`sys.r_strip()` can be called from anywhere.

## Description

Requirements

## See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})

