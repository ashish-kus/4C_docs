# sys.encode_file()

## Purpose

`sys.encode_file()` encodes the `<fromfile>` using the specified `<encodingmethod>` to `<tofile>`

## Usage

```text
ret = sys.encode_file(<fromfilename>,<tofilename>,<encodingtype>);
```

## Arguments

- `alpha <fromfilename>` — the full pathname of the file you are reading unencoded data from.
- `alpha <tofilename>` — the full pathname of the file you are writing the encoded data to.
- `integer` — `<encodingtype>` - This must be one of ENCODE_NONE, ENCODE_BASE16, or ENCODE_BASE64

## Returns

- `0` — File was encoded successfully.
- `< 0` — Some Error

## Where Used

`sys.encode_file()` can be called from anywhere.

## Description

`sys.encode_file()` encodes the `<fromfile>` using the specified `<encodingmethod>` to `<tofile>` The `<fromfile>` is not modified by sys.encode_file.

Requirements

Requires version 5.0 or higher of 4csrvr.

## See Also

`sys.encode_file()`

[`sys.decode_file()`]({{< ref "decodefile.md" >}})

[`sys.encode_text()`]({{< ref "encodetext.md" >}})

[`sys.decode_text()`]({{< ref "decodetext.md" >}})

Back to Top

## See Also

- [sys.encode_file()]({{< ref "encodefile.md" >}})
- [sys.decode_file()]({{< ref "decodefile.md" >}})
- [sys.encode_text()]({{< ref "encodetext.md" >}})
- [sys.decode_text()]({{< ref "decodetext.md" >}})


