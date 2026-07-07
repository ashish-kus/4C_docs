---
title: "sys.pkey_encrypt()"
description: "encrypts and encodes a small chunk of text using either a public or private ke"
weight: 237
draft: false
---

## Purpose

`sys.pkey_encrypt()` encrypts and encodes a small chunk of text using either a public or private key

## Usage

```text
b64text = sys.pkey_encrypt(<pkeyname>,<text>,<encodingtype>);
```

## Arguments

- `alpha` — `<pkeyname>` - The name used by the application when opening the public or private key.
- `alpha` — `<text>` - The clear text to encrypt.
- `integer` — `<encodingtype>` - must be ENCODE_BASE64 or ENCODE_BASE64URL

## Returns

- `<b64text>` — The base64 encoding of the encrypted text.
- `""` — Some error

## Where Used

`sys.pkey_encrypt()` can be called from anywhere as long as you have a valid public or private RSA key open open.

## Example

```text
The demo program demo.pkey.1 has an example of using a public/private key to encrypt
and then using only the private key to decrypt a small amount of text.
If you try to do this with too large a piece of text you will see that it fails at a fairly
small length.
```

## Description

`sys.pkey_encrypt()` will use an open public or private key to encrypt and encode a very small amount of text. This should really only be used when it is necessary to encrypt a symetric key and send it securely to another system. The size of text that can be encrypted is fairly small and you should assume it is no larger than 86 bytes.

Requirements

4csrvr version 5.2.8 or later

## Bugs/Features/Comments

Bugs

## See Also

[`sys.pkey_open()`]({{< ref "pkeyopen.md" >}})

[`sys.pkey_close()`]({{< ref "pkeyclose.md" >}})

[`sys.pkey_sign()`]({{< ref "pkeysign.md" >}})

[`sys.pkey_verify()`]({{< ref "pkeyverify.md" >}})

[`sys.pkey_decrypt()`]({{< ref "pkeydecrypt.md" >}})

Back to Top

## See Also

- [sys.pkey_open()]({{< ref "pkeyopen.md" >}})
- [sys.pkey_close()]({{< ref "pkeyclose.md" >}})
- [sys.pkey_sign()]({{< ref "pkeysign.md" >}})
- [sys.pkey_verify()]({{< ref "pkeyverify.md" >}})
- [sys.pkey_decrypt()]({{< ref "pkeydecrypt.md" >}})

