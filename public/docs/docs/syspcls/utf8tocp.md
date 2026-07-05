# sys.utf8_tocp()

## Purpose

`sys.utf8_tocp()` returns the 32bit integer codepoint for the utf8 character starting at byte 0 int `<utf8char>`

## Usage

```text
cp = sys.utf8_tocp(<utf8char>);
```

## Arguments

- `utf8 <utf8char>` — A single utf8 character byte string

## Returns

- `integer <cp>` — The unicode code point for the utf8 char starting at byte 0 in `<utf8char>` or
-1 if the first byte is teh start of an invalid utf8 character.

## Where Used

`sys.utf8_tocp()` can be called from anywhere.

## Example

```text
The demo.test.1 program has an example of using sys.utf8_tocp()
```

## Description

`sys.utf8_tocp()` returns the 32bit integer codepoint for the utf8 character starting at byte 0 int `<utf8char>` If the return is >= 0, then `<utf8char>` corresponded to the start of a valid UTF8 character and the number of bytes in that character is then stored in sys_ret. If the codepoint returned is less than 0, then the first byte in `<utf8char>` was not the beginning of a valid UTF8 character

Requirements

4csrvr 6.4.3 or later

## See Also

[`sys.cp_toutf8()`]({{< ref "cptoutf8.md" >}})

[`sys.utf8_charat()`]({{< ref "utf8charat.md" >}})

[`sys.utf8_count()`]({{< ref "utf8count.md" >}})

`sys.utf8_fix()`

`sys.utf8_join()`

`sys.utf8_split()`

`sys.utf8_tocp()`

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


