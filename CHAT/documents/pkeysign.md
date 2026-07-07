---
title: "sys.pkey_sign()"
description: "uses an open private key to digitally sign a string of text"
weight: 239
draft: false
---

## Purpose

`sys.pkey_sign()` uses an open private key to digitally sign a string of text.

## Usage

```text
sig = sys.pkey_sign(<pkeyname>,<text>);
```

## Arguments

- `alpha` — `<pkeyname>` - The name used by the application when opening the
private key.
- `alpha` — `<text>` - The data to sign

## Returns

- `alpha` — `<sig>` - The digital signature of the text
- `""` — Error
- `Anything else` — the digital signature of the text.

## Where Used

`sys.pkey_sign()` can be called anytime the private key is open.

## Example

```text
The following Demo programs have examples of using sys.pkey_sign()


demo.pkey.1



demo.pkey.2



demo.serial.cr
```

## Description

`sys.pkey_sign()` uses the open private key to create the digital signature for a string of text. The application may store this signature and use [`sys.pkey_verify()`]({{< ref "pkeyverify.md" >}}) somewhere else in the application to verify that the signed text has not been modified.

Requirements

[`sys.pkey_open()`]({{< ref "pkeyopen.md" >}}) requires 4CServer Version 4.6.1 or higher

## See Also

[`sys.pkey_open()`]({{< ref "pkeyopen.md" >}})

[`sys.pkey_close()`]({{< ref "pkeyclose.md" >}})

[`sys.pkey_verify()`]({{< ref "pkeyverify.md" >}})

[`sys.pkey_encrypt()`]({{< ref "pkeyencrypt.md" >}})

[`sys.pkey_decrypt()`]({{< ref "pkeydecrypt.md" >}})

Back to Top

## See Also

- [sys.pkey_open()]({{< ref "pkeyopen.md" >}})
- [sys.pkey_close()]({{< ref "pkeyclose.md" >}})
- [sys.pkey_verify()]({{< ref "pkeyverify.md" >}})
- [sys.pkey_encrypt()]({{< ref "pkeyencrypt.md" >}})
- [sys.pkey_decrypt()]({{< ref "pkeydecrypt.md" >}})

