# sys.decode_text()

## Purpose

`sys.decode_text()` decodes the `<fromtext>` alpha field using the specified `<encodingmethod>` and returns the decoded text.

## Usage

```text
text = sys.decode_text(<fromtext>,<encodingtype>);
```

## Arguments

- `alpha <fromtext>` — A 4C alpha field or literal that is encoded.
- `integer` — `<encodingtype>` - This must be one of ENCODE_NONE, ENCODE_BASE16, ENCODE_BASE64,
or ENCODE_BASE64URL

## Returns

- `""` — Some Error
- `Any other alpha` — `<fromtext>` was decoded successfully.

## Where Used

`sys.decode_text()` can be called from anywhere.

## Description

`sys.decode_text()` decodes the `<fromtext>` using the specified `<encodingmethod>` and returns the result as an alpha variable. The `<fromtext>` 4C field is not modified by sys.decode_text.

Requirements

Requires version 5.0 or higher of 4csrvr.

## See Also

[`sys.encode_file()`]({{< ref "encodefile.md" >}})

[`sys.decode_file()`]({{< ref "decodefile.md" >}})

[`sys.encode_text()`]({{< ref "encodetext.md" >}})

`sys.decode_text()`

Back to Top

## See Also

- [sys.encode_file()]({{< ref "encodefile.md" >}})
- [sys.decode_file()]({{< ref "decodefile.md" >}})
- [sys.encode_text()]({{< ref "encodetext.md" >}})
- [sys.decode_text()]({{< ref "decodetext.md" >}})


