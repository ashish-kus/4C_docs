# sys.md_calc()

## Purpose

`sys.md_calc()` calculates and returns a message digest

## Usage

```text
md = sys.md_calc(<field>[,<mdflags> [, encodingtype ]]);


md = sys.md_calc(<extfilename>,<mdflags>);
```

## Arguments

- `<field>` — The 4C field you want to calculate the message digest for.
`<field>` can be any datatype.
or
- `alpha <extfilename>` — The name of the file to calculate the message digest
for.
- `integer <mdflags>` — One of MD_SHA1, MD_RIPEMD160, MD_MD5, MD_SHA256, MD_SHA512
and one of MD_FIELD or MD_FILE.
If not specified, MD_SHA1|MD_FIELD is used.
- `integer <encodingtype>` — optional arg that can be one of
ENCODE_BASE64 (the default), ENCODE_BASE64URL, or ENCODE_BASE16

## Returns

- `alpha <md>` — An the encoded message digest

## Where Used

`sys.md_calc()` can be called from anywhere.

## Example

```text
An example of using sys.md_calc() is in verifying
passwords.
Instead of saving a user password, save the the message digest.
Then to verify the password,
prompt for the password, calculate the message digest, and compare
the message digest of the password with the saved message digest.
If they are equal, then the password is correct.



The demo programs demo.info.1 and password.fm both have examples of using sys.md_calc().
```

## Description

`sys.md_calc()` calculates the message digest of the value in a 4C field or the contents of a file. The message digest is a binary value that currently is difficult to represent in a 4C field so it is converted to an alpha representation using standard base64 encoding.

## See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})


