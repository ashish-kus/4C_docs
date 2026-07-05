---
title: "pclname()"
description: "replaces invalid byte sequences in <utf8str> with <repchar>, or with ? i"
weight: 341
draft: false
---

## Purpose

`sys.utf8_fix()` replaces invalid byte sequences in `<utf8str>` with `<repchar>`, or with '?' if `<repchar>` is not specified, and returns the modified UTF8 string

## Usage

```text
utf8str2 = sys.utf8_fix(<utf8str> [, <repchar>]);
```

## Arguments

utf8 `<utf8str>`
- `alpha <repchar>` — optional arg that must be a 7bit ascii char.
If none specified, the '?' is used as the replacement character.

## Returns

- `utf8 <utf8str2>` — A valid UTF8 string.

## Where Used

`sys.utf8_fix()` can be called from anywhere.

## Description

`sys.utf8_fix()` replaces invalid byte sequences in `<utf8str>` with `<repchar>`, or with '?' if `<repchar>` is not specified, and returns the modified UTF8 string If repchar is longer than a single character, only the first character is used to replace invalid bytes in `<utf8str>`

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

