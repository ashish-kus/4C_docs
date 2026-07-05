# sys.utf8_charat()

## Purpose

`sys.utf8_charat()` returns the utf8 character at `<idx>` in `<utf8str>`

## Usage

```text
utf8char = sys.utf8_charat(<utf8str>,<idx>);
```

## Arguments

- `utf8 <utf8str>` — A valid UTF8 string
- `integer <idx>` — The character, not byte, index into `<utf8str>` to get the character.

## Returns

- `utf8 <utf8char>` — A utf8  string corresponding to a single Unicode codepoint.
`<utf8char>` can be from 0 to 4 bytes.
If 0 bytes, then either `<idx>` was invalid or `<utf8str>` was not a valid UTF8 string.

## Where Used

`sys.utf8_charat()` can be called from anywhere.

## Example

```text
The demo.utf8.1 has an example of using sys.utf8_charat() in the test1() PCL
```

## Description

`sys.utf8_charat()` returns the utf8 character at `<idx>` in `<utf8str>`. The single utf8 character can be up to 4 bytes in length.

Requirements

4csrvr version 6.4.3 or later

## See Also

[`sys.cp_toutf8()`]({{< ref "cptoutf8.md" >}})

`sys.utf8_charat()`

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


