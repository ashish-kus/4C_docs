# sys.decode_file()

## Purpose

`sys.decode_file()` decodes the `<fromfile>` using the specified `<encodingmethod>` to `<tofile>`

## Usage

```text
ret = sys.decode_file(<fromfilename>,<tofilename>,<encodingtype>);
```

## Arguments

- `alpha <fromfilename>` — the full pathname of the file you are reading encoded data from.
- `alpha <tofilename>` — the full pathname of the file you are writing the decoded data to.
- `integer` — `<encodingtype>` - This must be one of ENCODE_NONE, ENCODE_BASE16, or ENCODE_BASE64

## Returns

- `0` — File was decoded successfully.
- `< 0` — Some Error

## Where Used

`sys.decode_file()` can be called from anywhere.

## Description

`sys.decode_file()` decodes the `<fromfile>` using the specified `<encodingmethod>` to `<tofile>` The `<fromfile>` is not modified by sys.encode_file.

Requirements

Requires version 5.0 or higher of 4csrvr.

## See Also

[`sys.encode_file()`]({{< ref "encodefile.md" >}})

`sys.decode_file()`

[`sys.encode_text()`]({{< ref "encodetext.md" >}})

[`sys.decode_text()`]({{< ref "decodetext.md" >}})

Back to Top

## See Also

- [sys.encode_file()]({{< ref "encodefile.md" >}})
- [sys.decode_file()]({{< ref "decodefile.md" >}})
- [sys.encode_text()]({{< ref "encodetext.md" >}})
- [sys.decode_text()]({{< ref "decodetext.md" >}})


