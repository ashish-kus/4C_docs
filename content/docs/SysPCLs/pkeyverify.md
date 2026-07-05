---
title: "sys.pkey_verify()"
description: "verifies a the signature for a string of tex"
weight: 240
draft: false
---

## Purpose

`sys.pkey_verify()` verifies a the signature for a string of text using public key cryptography.

## Usage

```text
ret = sys.pkey_verify(<pkeyname>,<text>,<sig>);
```

## Arguments

- `alpha` — `<pkeyname>` - The name the application used when opening the key.
- `alpha` — `<text>` - The data to verify
- `alpha` — `<sig>` - The signature to verify

## Returns

- `0` — Signature verified.
- `-1` — Signature verify failed.

## Where Used

`sys.pkey_verify()` can be called anytime the application has an open public/private key that they want to use to verify the digital signature of a string of text.

## Example

```text
The following Demo programs have examples of using sys.pkey_verify()


demo.pkey.1



demo.pkey.2



demo.serial.cr
```

## Description

`sys.pkey_verify()` uses public key cryptography to verify the digital signature of a string of text. The application must have open either the public or the private key corresponding to the private key that was used to digitally sign the text.

Requirements

[`sys.pkey_open()`]({{< ref "pkeyopen.md" >}}) requires 4CServer Version 4.6.1 or higher

## See Also

[`sys.pkey_open()`]({{< ref "pkeyopen.md" >}})

[`sys.pkey_close()`]({{< ref "pkeyclose.md" >}})

[`sys.pkey_sign()`]({{< ref "pkeysign.md" >}})

[`sys.pkey_encrypt()`]({{< ref "pkeyencrypt.md" >}})

[`sys.pkey_decrypt()`]({{< ref "pkeydecrypt.md" >}})

Back to Top

## See Also

- [sys.pkey_open()]({{< ref "pkeyopen.md" >}})
- [sys.pkey_close()]({{< ref "pkeyclose.md" >}})
- [sys.pkey_sign()]({{< ref "pkeysign.md" >}})
- [sys.pkey_encrypt()]({{< ref "pkeyencrypt.md" >}})
- [sys.pkey_decrypt()]({{< ref "pkeydecrypt.md" >}})

