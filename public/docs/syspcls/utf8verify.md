# sys.utf8_verify()

## Purpose

`sys.utf8_verify()` verifys that all bytes in `<utf8str>` are valid and returns 0 if they are and -1 if they are not.

## Usage

```text
ret = sys.utf8_verify(<utf8str>);
```

## Arguments

- `utf8 <utf8str>` — A string of bytes that may or may not be a valid utf8 str.

## Returns

- `integer <ret>` — 0 if `<utf8str>` is a valid UTF8 string, -1 if not

## Where Used

`sys.utf8_verify()` can be called from anywhere.

## Description

`sys.utf8_verify()` verifys that all bytes in `<utf8str>` are valid and returns 0 if they are and -1 if they are not. When -1 is returned, the byte index into `<utf8str>` of the start of the 1st invalid utf8 character is saved in sys_ret.

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

`sys.utf8_verify()`

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


