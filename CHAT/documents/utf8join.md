---
title: "pclname()"
description: "joins the elements in either a utf8 character array or a unicode codepoin"
weight: 342
draft: false
---

## Purpose

`sys.utf8_join()` joins the elements in either a utf8 character array or a unicode codepoint array and returns a new utf8 string.

## Usage

```text
<utf8str> = sys.utf8_join(<array[idx]> [ , <maxelements> ]);
```

## Arguments

- `utf8 OR integer <array[idx]>` — The starting element of either a UTF8 character array or a
Unicode codepoint array
- `integer <maxelements>` — Optional argument that specifies the maximum number of elements from
the array to join.
If not specified, then all elements starting at index `<idx>` until the end of the array are
joined.

## Returns

- `utf8 <utf8str>` — The UTF8 string created by joining the elements of the array into a utf8 string

## Where Used

`sys.utf8_join()` can be called from anywhere.

## Description

`sys.utf8_join()` joins the elements in either a utf8 character array or a unicode codepoint array and returns a new utf8 string.

Requirements

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

