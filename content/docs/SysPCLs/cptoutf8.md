---
title: "sys.cp_toutf8()"
description: "converts 1 to 30 32 bit integer Unicode Codepoints to one UTF8 string"
weight: 51
draft: false
---

## Purpose

`sys.cp_toutf8()` converts 1 to 30 32 bit integer Unicode Codepoints to one UTF8 string.

## Usage

```text
utf8str = sys.cp_toutf8(<cp01> [,<cp02> ... ,<cp30> ]);
```

## Arguments

- `integer <cpNN>` — Any valid Unicode 32bit codepoint.

## Returns

- `utf8 <utf8str>` — A valid UTF8 string

## Where Used

`sys.cp_toutf8()` can be called from anywhere.

## Example

```text
The demo.utf8.1 program, though silly and pointless, has several examples of using
sys.cp_toutf8(_ to create UTF8 strings.
```

## Description

`sys.cp_toutf8()` converts 1 to 30 32 bit integer Unicode Codepoints to one UTF8 string. The total number of bytes in the returned utf8 string is stored in sys_ret.

Requirements

4csrvr version 6.4.3 or later.

## See Also

`sys.cp_toutf8()`

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

