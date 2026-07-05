# sys.pkey_close()

## Purpose

`sys.pkey_close()` closes the private/public key associated with `<pkeyname>`

## Usage

```text
ret = sys.pkey_close();
```

## Arguments

- `alpha` — `<pkeyname>` - The name the application used when opening the key.

## Returns

- `integer` — `<ret>`
- `0` — OK
- `-1` — `<pkeyname>` not found.

## Where Used

`sys.pkey_close()` can be called anytime a private/public key is open.

## Example

```text
The following Demo programs have examples of using sys.pkey_close()


demo.pkey.1



demo.pkey.2
```

## Description

`sys.pkey_close()` simply closes an open public/private key.

Requirements

`sys.pkey_close()` requires 4CServer Version 4.6.1 or higher

## See Also

[`sys.pkey_open()`]({{< ref "pkeyopen.md" >}})

[`sys.pkey_sign()`]({{< ref "pkeysign.md" >}})

[`sys.pkey_verify()`]({{< ref "pkeyverify.md" >}})

[`sys.pkey_encrypt()`]({{< ref "pkeyencrypt.md" >}})

[`sys.pkey_decrypt()`]({{< ref "pkeydecrypt.md" >}})

Back to Top

## See Also

- [sys.pkey_open()]({{< ref "pkeyopen.md" >}})
- [sys.pkey_sign()]({{< ref "pkeysign.md" >}})
- [sys.pkey_verify()]({{< ref "pkeyverify.md" >}})
- [sys.pkey_encrypt()]({{< ref "pkeyencrypt.md" >}})
- [sys.pkey_decrypt()]({{< ref "pkeydecrypt.md" >}})


