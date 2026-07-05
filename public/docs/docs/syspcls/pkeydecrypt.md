# sys.pkey_decrypt()

## Purpose

`sys.pkey_decrypt()` decrypts a publickey encrypted/base64 encoded piece of text

## Usage

```text
cleartext = sys.pkey_decrypt(<pkeyname>,<b64text>,<encodingtype>);
```

## Arguments

- `alpha` — `<pkeyname>` - The name used by the application when opening the private key.
- `alpha` — `<b64text>` - The encrypted and encoded text to decode and decrypt
- `integer` — `<encodingtype>` - must be ENCODE_BASE64 or ENCODE_BASE64URL

## Returns

- `<cleartext>` — The cleartext that was originally encrypted and encoded.
- `""` — Some error

## Where Used

`sys.pkey_decrypt()` can be called from anywhere as long as you have a valid private RSA key open.

## Example

```text
The demo program demo.pkey.1 has an example of using a public/private key to encrypt
and then using only the private key to decrypt a small amount of text.
If you try to do this with too large a piece of text you will see that it fails at a fairly
small length.
```

## Description

`sys.pkey_decrypt()` will use an open private key to decrypt a small amount of base64 encoded text. amount of text.

Requirements

4csrvr version 5.2.8 or later

## Bugs/Features/Comments

Bugs

## See Also

[`sys.pkey_open()`]({{< ref "pkeyopen.md" >}})

[`sys.pkey_close()`]({{< ref "pkeyclose.md" >}})

[`sys.pkey_sign()`]({{< ref "pkeysign.md" >}})

[`sys.pkey_verify()`]({{< ref "pkeyverify.md" >}})

[`sys.pkey_encrypt()`]({{< ref "pkeyencrypt.md" >}})

Back to Top

## See Also

- [sys.pkey_open()]({{< ref "pkeyopen.md" >}})
- [sys.pkey_close()]({{< ref "pkeyclose.md" >}})
- [sys.pkey_sign()]({{< ref "pkeysign.md" >}})
- [sys.pkey_verify()]({{< ref "pkeyverify.md" >}})
- [sys.pkey_encrypt()]({{< ref "pkeyencrypt.md" >}})


