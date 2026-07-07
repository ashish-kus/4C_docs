---
title: "sys.utf8_count()"
description: "returns the number UTF8 characters in <utf8str"
weight: 340
draft: false
---

## Purpose

`sys.utf8_count()` returns the number UTF8 characters in `<utf8str>`

## Usage

```text
count = sys.utf8_count(<utf8str>);
```

## Arguments

- `utf8 <utf8str>` — A valid UTF8 string

## Returns

- `integer <count>` — The number of UTF8 characters in `<utf8str>`, -1 for error

## Where Used

`sys.utf8_count()` can be called from anywhere.

## Example

```text
See demo.utf8.1 for an example
```

## Description

`sys.utf8_count()` returns the number UTF8 characters in `<utf8str>`. If `<utf8str>` is not a valid UTF8 string, then -1 is returned.

Requirements

4csrvr version 6.4.3 or later

## See Also

[`sys.cp_toutf8()`]({{< ref "cptoutf8.md" >}})

[`sys.utf8_charat()`]({{< ref "utf8charat.md" >}})

`sys.utf8_count()`

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

