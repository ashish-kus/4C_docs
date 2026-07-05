---
title: "4C Network Security - Overview"
weight: 7
draft: false
---

The 4.4 version of 4C is the first release of Secure4C.
All future versions will also be secure.
Secure4C allows you to:

- Set security options where they belong, on the server.
- Specify the encryption algorithm and encryption keysize used when sending data between the client and the server.
- Authenticate a user securely.
- Enable or Disable incoming connections on a host by host basis. A host can identify a single machine or multiple machines.
- Enable or disable specific users or groups of users.
- Allow some users to connect only from certain machines.
- Specify min client version on a host basis. This in effect allows you to force clients to use a secure client if you want or allow them to use an insecure client.
- Limit some machines or users to specific 4C services.
- Limit some services to ReadOnly
- Limit users to specific applications.
- Run an authenticated user with the credentials of another user.
- Make all config files including JISCONFIG, XLCONFIG, and _4CSRVRCONFIG ReadOnly.
- Remove DefaultLogon from _4CSRVRCONFIG.
- Log all client authentication attempts, successful and unsuccessful.

Some issues that have not been addressed yet, but may be in the future
if there is enough interest are:

- PublicKey authentication.
- Limiting incoming connections to certain hours of the day or days of the week.
- Allow clients to specify their security preferences.

Before going into too much detail, here are a few definitions
that are important:

- Service - A service is something supplied by a server process to a requesting client. 4C Services are described later.
- Authentication - Authentication is a method that a client uses to authenticate itself to a server process. Methods that 4C clients can use to authenticate themselves to a 4C server process are described later.
- Encryption - Encoding data so that it can not be read without a key to decode it is encryption. The algorithm used for encryption is called a cipher. The ciphers that 4c allows are described later.
- Symetric key encryption - A method of encryption where the key used for encoding data is the same as the key used for decoding it.
- Public Key encryption - A method of encryption where 2 different keys are used for encoding and decoding data. One key is private and one key is public and can be shared. Public key encryption is slow compared to symetric key encryption and is usually used for digital signatures and key exchange.
- Diffie-Hellman - This is a key agreement algorithm that allows a client and a server to independantly compute a shared secret that is used as a symetric key. 4C uses the OpenSLL implementation of this algorithm to allow both the client process and server process to independantly compute a shared symetric key that is used during the rest of the authentication process. This is the first public key algorithm invented.
- RSA - This is a public key algorithm invented by: Ron Rivest, Adi Shamir, and Leonard Adleman. It was patented for a long time but as of September 2000, it is no longer encumbered by patent restrictions. RSA can be used for digital signatures as well as for encryption.
- DSA - The Digital Signature Algorithm is appropriate for digital signatures, but not for encryption or key exchange.
- HostKey - a Private key that belongs to one single host. All 4C server systems need a host key. Typically, the host key is used by a server to prove it's authenticity to a client. 4C does this, but currently the client does not save the public part of the servers host key so it does not really know it is connecting to the same host or not. This may change, but when it does client configuration gets more complicated.
- Strong vs Weak encryption - This probably changes year to year but currently symetric keysizes <= 64 bits is considered weak encryption and is breakable with some effort. The Bruce Schneier book, Applied Cryptography, goes into this in some detail about what keysizes are appropriate for different types of applications.

---

## 4C Services

4C implements the following services:

- Run - This is the service that most incoming connections connect to. The 4csrvr program implements this service. Users interacting with your application need access to this service.
- fs - This is a simple file server service which allows a 4C server process on one machine to read files from another 4C server machine. Often this is a ReadOnly service. The 4cfs process implements this service.
- Dev - This service is used by developers. You need access to this service in order to run the pcl editor or panel screen painter. You also need access to this service to run xlbuild from a command line. You do not need access to this service to compile programs automatically. Server programs that implement the dev service include 4cbuild, 4cpcled, and 4cpnlsp.
- Share - The 4C share service allows real time sharing of data between 4C applications running on different machines. This is a seldom used, though powerful service. The processes that implement the 4C share service are 4cshare and 4cdde. 4cdde runs only on NT machines.
- CSum - The 4C CSum service is used only as a network debugging tool and is normally not needed. The process that implements the CSum service is 4cchecksum.
- Logrdr - The 4C Logrdr service is needed by 4C applications that read remote 4C log files, often to implement data replication. It is not needed by most users, but probably should be available to anyone that has the Dev service enabled. This service is always ReadOnly. The Logrdr service is implemented by the 4clogrdr process.
- Aux - The Aux service is needed for printing and for starting a 4cbuild process from any other running 4C process. It is always implicitly enabled. You do not need to enable it explicitly. Processes that implement the Aux service include 4cbuild and 4cprt.
- Pwd - The 4C Pwd service allows a user to change their password if it is expired. If you require this functionality within the 4C environment, then you must enable this service. The 4C Pwd service is implemented internally by the 4csrvrd process. 4C Pwd is not available yet on all operating systems.

---

## 4C Authentication

All 4C authentication is handled by the 4csrvrd process which normally
runs with root privileges on Unix systems or LocalSystem privileges
on NT systems.
The methods that 4C currently allows a client to use for authentication are:

- Password - This is the standard username/password method in use now.
- LocalUser - This method of authentication requires the client to prove it already has the user's credentials by reading the contents of a file that is readonly by the requesting user only. 4csrvrd creates this file, sets the owner and permisssions on the file, writes random data into it, and then challenges the client to prove that it can read the file. If the client proves it can read the data, then the client is authenticated. This method is currently in use for 4csrvr processes that need to start a 4cbuild process. It is also used when root starts a local 4ccl process to run with some other user's credentials.
- ConnectedUser - This authentication method is new and can only be used from a client that has a current active connection. The short description of the way it works is that the new client proves to 4csrvrd that it knows a secret that only the original client (authenticated via some other method) could know, so 4csrvrd trusts the new client to connect as the same username as the already connected client. This is mostly used when starting the 4cpcled or 4cpnlsp processes. It may also be used when starting a 4cbuild process from an already running 4csrvr process.
- Trusted - The trusted authentication allows a specific user on a specific machine to be trusted and not need to supply any other authentication credentials. This can be useful for running background processes that connect to the 4C fs service.

Authentication via PublicKey may be implemented in the future.
Currently, I think very few clients would choose to use this
method.
Let me know if you think otherwise.

---

## 4C Encryption

4C Encryption makes use of the crypto library
that is part of OpenSSL.
The encryption algorithms used are called ciphers and they can
be used in more than one mode and in multiple keysizes.
You can read about them in many different Cryptograaphy books.
The symetric ciphers, modes, and keysizes that 4C supports are:

- bf - This is the Blowfish cipher and it can be used in any keysize from 32 - 448 bits. 128 bit key size should be more than strong enough for any of your 4C needs. The modes available with the blowfish cipher are: cbc, cfb, ecb, and ofb.
- cast5 - The cast5 cipher is available in keysizes 40 - 128 bits in 8bit increments. The modes available are: cbc, cfb, ecb, and ofb.
- aes - The Advanced Encryption Standard Cipher is available in keysizes 128, 192, and 256 bits. Modes allowed are: cbc, cfb, ecb, and ofb.
- 3des - The Triple DES cipher is available in keysize 128 only. Modes allowed are: cbc, cfb, and ofb.
- des - The Data Encryption Standard cipher allows 64 bit keysize and modes cbc, cfb, ecb, and ofb. This cipher is considered slow and insecure.

As a default, 4C does not allow symetric encryption keylens > 64
unless strong encryption has been enabled through
serialization.
Servers residing in the US or Canada
serialized with the new serialization program, 4csp,
can have strong encryption enabled.
To enable strong encryption on a server outside of those locales
your application needs an export license from
the Bureau of Industry and Security, US Department of Commerce.
For more information regarding export of strong encryption
software, please see docs at:
[The Bureau of Industry and Security.](https://bxa.doc.gov)
If you have questions on this, please consult an export lawyer.
I cannot help with obtaining an export license.

Even when strong encryption is not enabled,
user authentication can and does use strong encryption.

If you need to understand more about encryption ciphers and modes
you should look them up in the Bruce Schneier book, Applied Cryptography.
If you just want a recomendation on what to use, my suggestion is to use
one of the following:

- Cipher=bf,Len=64,Mode=CBC
- Cipher=bf,Len=128,Mode=CBC
- Cipher=cast5,Len=64,Mode=CBC
- Cipher=cast5,Len=128,Mode=CBC
