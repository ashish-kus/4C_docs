---
title: "sys.pkey_open()"
description: "Opens one of the private/public keys asociated wit"
weight: 238
draft: false
---

## Purpose

`sys.pkey_open()` Opens one of the private/public keys asociated with a pair of public key cryptography keys.

## Usage

```text
ret = sys.pkey_open(<pkeyname>,<name_or_value>,<passphrase>,<pkeyflags>,[ <digestname> ]);
```

## Arguments

- `alpha` — `<pkeyname>` - An application specified name that is used in subsequent
calls to sys.pkey_close(), sys.pkey_sign(), and sys.pkey_verify().
- `alpha` — `<name_or_value>` - Either a full path name to the key file,
or the value of the key.
- `alpha` — `<passphrase>` -
If the private key file or private key value is encrypted,
this is the passwd.
Use an empty string when opening the public key.
When opening an HMAC key, the passphrase used is the symetric key, and
must be specified.
- `integer` — `<pkeyflags>`
Combinations of the following:
- `PKEY_PUBLIC` — Key being opened is the public part of the keypair.
- `PKEY_PRIVATE` — Key being opened is the private part of the keypair.
- `PKEY_RSA` — Key type is RSA
- `PKEY_DSA` — Key type is DSA
- `PKEY_FILE` — The `<name_or_value>` arg is the pathname of the key file
- `PKEY_FIELD` — The `<name_or_value>` arg is the value of the key
- `PKEY_HMAC` — The key being opened is an HMAC key.
No other flags should be specified.
Normally, you will specify one of PKEY_PUBLIC/PKEY_PRIVATE and
one of PKEY_RSA/PKEY_DSA, and one of PKEY_FILE/PKEY_FIELD.
The exception to this is when opening PKEY_HMAC is specified.
- `alpha` — `<digestname>` - Optional name of the digest for an HMAC and RSA keys.
Allowable values are:
"sha1", "sha256", "sha512", "md5", and "rpmd160"
If digest name is not specified, the default "sha256" is used for HMAC keys
and "sha1" for RSA keys.
The reason that the defaults are different is that RSA keys were implemented
way before HMAC keys and sha1 was a reasonable default at that time.

## Returns

- `0` — Key opened successfully
- `-1` — Error - Possibly invalid path or invalid passphrase

## Where Used

`sys.pkey_open()` can be called from anywhere. An application that wants to prevent unauthorized access to the application may want to use public key cryptography to do so.

## Example

```text
The following Demo programs have examples of using sys.pkey_open()


demo.pkey.1



demo.pkey.2



demo.serial.cr



demo.serial.chk



There is an rsa public key pair installed with the demo application.
The private key is ${XLAPP}/Keys/key_rsa and the passphrase to open this
key is Software4C!Demo.
The public key is ${XLAPP}/Keys/key_rsa.pub.



Specify one of the 2 rsa key files when running demo.pkey.1



demo.pkey.2 is similar to demo.pkey.1 except that it uses keys stored
in the program rather than a file.
```

## Description

`sys.pkey_open()` allows the application to open one of the private/public keys associated with a pair of public key cryptography keys or to create an HMAC key. Once open, the key can be used to sign or verify a public key cryptography signature. The private key can be used to sign and verify. HMAC Keys can be used to sign and to verify. The public key can only be used to verify a signature. The public key will not need a passphrase, but typically the private key will. In order to use any of the system pcls associated with public key cryptography, you need to understand public key cryptography. Please read some of the available resources on public key cryptography before using any of these system pcls.

Requirements

`sys.pkey_open()` requires 4CServer Version 4.6.1 or higher

HMAC Keys are supported with 4csrvr version 6.0.3 and later.

## Bugs/Features/Comments

All keys opened with `sys.pkey_open()` by a 4C program are closed when that 4C program exits.

Different 4C programs can use the same name for different private/public keys.

Keys opened by parent programs are accessible by children programs as long as the same name is used.

## See Also

[`sys.pkey_close()`]({{< ref "pkeyclose.md" >}})

[`sys.pkey_sign()`]({{< ref "pkeysign.md" >}})

[`sys.pkey_verify()`]({{< ref "pkeyverify.md" >}})

[`sys.pkey_encrypt()`]({{< ref "pkeyencrypt.md" >}})

[`sys.pkey_decrypt()`]({{< ref "pkeydecrypt.md" >}})

Back to Top

## See Also

- [sys.pkey_close()]({{< ref "pkeyclose.md" >}})
- [sys.pkey_sign()]({{< ref "pkeysign.md" >}})
- [sys.pkey_verify()]({{< ref "pkeyverify.md" >}})
- [sys.pkey_encrypt()]({{< ref "pkeyencrypt.md" >}})
- [sys.pkey_decrypt()]({{< ref "pkeydecrypt.md" >}})

