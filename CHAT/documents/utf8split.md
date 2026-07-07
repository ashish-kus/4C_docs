---
title: "pclname()"
description: "splits a UTF8 string into an array of UTF8 characters and/or an arra"
weight: 343
draft: false
---

## Purpose

`sys.utf8_split()` splits a UTF8 string into an array of UTF8 characters and/or an array of Unicode codepoints.

## Usage

```text
ret = sys.utf8_split(<utf8str> [, <utf8array[idx]> ] [, <cparray[idx]>]);
```

## Arguments

- `utf8 <utf8str>` — A valid utf8 string
- `utf8 <utf8array[idx]>` — The starting item in a utf8array to store the utf8 characters into
- `integer <cparray[idx]>` — The starting item in an integer array to store the codepoints into
Both <utf8array[idx]> and <cparray[idx]> are aptional arguments but at least one of them must
be specified.

## Returns

- `integer <ret>` — -1 on error, or the total number of items stored in either of the two arrays
passed in.

## Where Used

`sys.utf8_split()` can be called from anywhere.

## Description

`sys.utf8_split()` splits a UTF8 string into an array of UTF8 characters and/or an array of Unicode codepoints.

Requirements

4csrvr version 6.4.3 or later

## See Also

[`sys.cp_toutf8()`]({{< ref "cptoutf8.md" >}})

[`sys.utf8_charat()`]({{< ref "utf8charat.md" >}})

[`sys.utf8_count()`]({{< ref "utf8count.md" >}})

`sys.utf8_fix()`

`sys.utf8_join()`

`sys.utf8_split()`

[`sys.utf8_tocp()`]({{< ref "utf8tocp.md" >}})

[`sys.utf8_verify()`]({{< ref "utf8verify.md" >}})

Back to Top

## See Also

- [sys.cp_toutf8()]({{< ref "cptoutf8.md" >}})
- [sys.utf8_charat()]({{< ref "utf8charat.md" >}})
- [sys.utf8_count()]({{< ref "utf8count.md" >}})
- [sys.utf8_fix()]({{< ref "utf8fix.md" >}})
- [sys.utf8_join()]({{< ref "utf8join.md" >}})
- [sys.utf8_split()]({{< ref "utf8split.md" >}})
- [sys.utf8_tocp()]({{< ref "utf8tocp.md" >}})
- [sys.utf8_verify()]({{< ref "utf8verify.md" >}})

