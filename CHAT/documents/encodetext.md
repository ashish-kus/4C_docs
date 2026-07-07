---
title: "sys.encode_text()"
description: "encodes the <fromtext> alpha field using the specifie"
weight: 78
draft: false
---

## Purpose

`sys.encode_text()` encodes the `<fromtext>` alpha field using the specified `<encodingmethod>` and returns the encoded text.

## Usage

```text
etext = sys.encode_text(<fromtext>,<encodingtype>);
```

## Arguments

- `alpha <fromtext>` — A 4C alpha field or literal.
- `integer` — `<encodingtype>` - This must be one of ENCODE_NONE, ENCODE_BASE16,
ENCODE_BASE64, or ENCODE_BASE64URL

## Returns

- `""` — Some Error
- `Any other alpha` — `<fromtext>` was encoded successfully.

## Where Used

`sys.encode_text()` can be called from anywhere.

## Description

`sys.encode_text()` encodes the `<fromtext>` using the specified `<encodingmethod>` and returns the result as an alpha variable. The `<fromtext>` 4C field is not modified by sys.encode_text.

Requirements

Requires version 5.0 or higher of 4csrvr.

## See Also

[`sys.encode_file()`]({{< ref "encodefile.md" >}})

[`sys.decode_file()`]({{< ref "decodefile.md" >}})

`sys.encode_text()`

[`sys.decode_text()`]({{< ref "decodetext.md" >}})

Back to Top

## See Also

- [sys.encode_file()]({{< ref "encodefile.md" >}})
- [sys.decode_file()]({{< ref "decodefile.md" >}})
- [sys.encode_text()]({{< ref "encodetext.md" >}})
- [sys.decode_text()]({{< ref "decodetext.md" >}})

