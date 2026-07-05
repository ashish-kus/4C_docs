# 4C Cryptography - Overview

A number of features involving cryptography are available in version 5.2 of 4csrvr.
These features include

- Automatic symetric encrytion of data in JISAM and JISAM64 files
- Encoding/Decoding data.
- Public Key Cryptography
- Digital Signatures
- Message Digests

All 4C features involving cryptographic features of any kind use the opensll library.
To effectively use any of these features a basic understanding of openssl is helpful.

---

## 4C Symetric Key Data Encryption

4C can automatically encrypt/decrypt data in JISAM and JISAM64 files.
Automatic data encryption of other types of files and of database tables is not supported.
If you need data encryption within a database, use the database to do this.
If you need to encrypt a text or binary file or an alpha field, there are system PCLs
that will allow your programs to do this.

Symetric key encryption means using the same key for encrypting data and for decrypting it.
So, before you can use data encryption in 4C, you must define at least one key and make
4C aware of the key.

4C Encryption keys are stored in one single text file and you make 4C aware of this
file by an entry in the SecurityConfig file that looks like:

```text
KeyListFile `<KeyFileName>`
```

or

```text
KeyListFile `<FullPathToKeyFile>`
```

If you do not specify a full path to the KeyListFile, then 4C will look only
in the HOME_4C/security directory for the file.
If you leave the file in the HOME_4C/security directory, it should be readonly by root only.

The KeyListFile will have one or more entries to define the symetric keys.
Each key has some or all of the following attributes

- Name - A short name for the key. This name is used when encrypting data. It should contain only upper/lower case letters, digits, and the underscore or dash characters. It can be no longer than 20 charatcers.
- A 4C cipher definition. The cipher definition defines the algorithm, key length, and mode used for encryption. 4C cipher definitions are described here [4C Network Security Overview]({{< ref "../Network/ov.md" >}}) under the "4C Encryption" header. Any cipher definition that you can specify in the SecurityConfig file for encrypting data going across the network, can be specifed in the KeyListFile also. A simple cipher definition might look like: `Cipher=AES,Mode=cbc,Len=128` or `Cipher=AES,Mode=Default,Len=128`
- KeyValue - This is a Base64 representation of the real symetric key. This is what needs to be protected.
- Encrypted - This can be either True or False and specifies whether the key itself is encrypted with an RSA public key. If you encrypt the symetric key with with an RSA public key, then the RSA private key must be available when 4csrvrd reads the KeyListFile.
- Sha1 - This is a sha1 message digest of the key entry and is meant to detect errors in the integrity of the key entry.

You normally will use the 4cgenkey utility to create keys and then add them to the KeyListFile
Enter

```text
4cgenkey --help
```

to see how tyo use 4cgenkey.
A simple command to add an AES 128 bit key using CBC mode to a file named MyKeyList using "TestKey1"
as the key name is

```text
4cgenkey -n TestKey1 -c aes -l 128 -m cbc >>MyKeyList
```

You can have as many keys in the KeyListFile as you need.

4C will only read the KeyListFile when it first starts or after 4csrvrd has been called with the
"-R" option.

Once you have defined some keys, you can specify which data files should be encrypted and
how they should be encrypted.
You can do this by

- In the file definition screen, specify either Full or Field for Encryption.
- Call up the Encryption Specs screen from the context menu and specify the key name to use when encrypting data. Add a rcd or modify the rcd for the current file definition. This will add a rcd to sys.fh_cipher. The reason for keeping this outside of sys.file_hdr is so that file definitions can still be imported and exported between different systems that are using different keys for encryption.
- If Field level encryption is specified, then go to the field details screen and select the fields that you want to encrypt by setting "Encrypt" under the options tab to "y".
- If Full file encryption was specified, then there is nothing else to specify.
- Compile the file definition.
- Data will be encrypted now everytime that data is written to the file using 4C or a 4C utility program. If you to encrypt all data immediately, you can do this from the command line using xlcopy. None of the JISAM utilities know anything about 4C encryption so using these utilities does not change the encryption status of any rcds.

Some things to keep in mind

- If you lose the Key definition, all data that has been encrypted with that key is lost. Even if you you only encrypted some data fields, all data fields past the first encrypted one in a rcd will be lost.
- Protect your keys.
- Don't lose your keys.
- You can change the key used for encryption at any time and as long as the original key is kept in the KeyListFile, then you can have some data encrypted with one key and some data encrypted with another.
- You can also change whether a file uses full file encryption or field encryption or no encryption at any time. Encryption Key info and level are stored with each rcd that is encrypted. So, you can have some rcds encrypted fully, some where only some fields are encrypted, and some with no encryption at all.
- Moving a data file that uses encryption between systems will only work if both systems have exact same key definitions defined in the KeyListFile.
- Using field level encryption with many data fields is probably slower than using Full encryption.

---

## 4C Cryptographic Signatures

4C will allow an application to use public key cryptography for signing and for verifying
signatures.
In order to sign a piece of text, you must use the private key from the key pair.
In order to verify that a signature is valid for a piece of text you can use either the
private key or the public key of the key pair.
The following system PCLs can be used with digital signatures.

- [sys.pkey_open]({{< ref "../../SysPCLs/pkeyopen.md" >}})
- [sys.pkey_close]({{< ref "../../SysPCLs/pkeyclose.md" >}})
- [sys.pkey_sign]({{< ref "../../SysPCLs/pkeysign.md" >}})
- [sys.pkey_verify]({{< ref "../../SysPCLs/pkeyverify.md" >}})

The only type of public keys that 4C can use with digital signatures are RSA and DSA keys.

The demo programs, demo.pkey.1, demo.pkey.2, demo.serial.cr, and demo.serial.chk show
ways that these system PCLs can be used.

You can also use public key cryptography to encrypt or decrypt very small amounts of text.
This could be used to send a symetric key securely to a remote system.
There are 2 additional public key cryptography PCLs that can be used for this.
They are

- [sys.pkey_encrypt]({{< ref "../../SysPCLs/pkeyencrypt.md" >}})
- [sys.pkey_decrypt]({{< ref "../../SysPCLs/pkeydecrypt.md" >}})

sys.pkey_encrypt and sys.pkey_decrypt require a 5.2.8 or later 4csrvr.
sys.pkey_encrypt and sys.pkey_decrypt only work with RSA keys.

---

## Encoding/Decoding

Encoding is the process of transforming some data into another form where it can be
used by another process or system.
Encoding is not the same as encryption.
There is no key involved.
The only thing necessary to decode encoded data is to know the encoding algorithm.
Encoding is especially important when it is necessary to send binary data across a medium
that can't handle binary data.
The types of encoding that 4C currently supports are.

- Base64 - This is by far the most useful and should be the preferred encoding method for large amounds of data. The characters that will appear in the encoded data are "0-9", "a-z", "A-Z", "+/" The "=" is used to pad the end of the encoded data if necessary. Base16 - The characters that will appear in the encoded data are "0-9" and "a-f". Usable but requires more space than Base64. None - Some of the System PCLs allow you to specify ENCODE_NONE. This is just what it sounds like, and does not encode the data at all.

All of the data encryption and decryption PCLs support encoding/decoding the data as well as
decoding/decrypting it.
In addition, 4C allows you to use the following system PCLs to encode/decode a single 4C alpha
field or a file.
The file can be any type of file.

- [sys.encode_file]({{< ref "../../SysPCLs/encodefile.md" >}})
- [sys.decode_file]({{< ref "../../SysPCLs/decodefile.md" >}})
- [sys.encode_text]({{< ref "../../SysPCLs/encodetext.md" >}})
- [sys.decode_text]({{< ref "../../SysPCLs/decodetext.md" >}})

