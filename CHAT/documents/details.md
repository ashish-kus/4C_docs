---
title: "4C Network Security - Details - Authentication"
weight: 4
draft: false
---

Here's a detailed description of the authentication
process.

- 4csrvrd - At startup read and save in memory the configuration settings from the _4CSRVRCONFIG, SecurityConfig, AuthClient, Group, and AuthUser config files. These will not be read again unless a reload request is sent to 4csrvrd.
- 4csrvrd - listen for connnection requests on a specific port.
- 4cclient - send a request to 4csrvrd requesting connection to a specific 4C service.
- 4csrvrd - search for a matching AuthClient entry. If no entry is found, no connection is allowed. If the client version is less than the MinClientVersion, the connection is not allowed.
- 4csrvrd - If the client version is less than 4.4.0 then proceed with an insecure authentication.

The rest of this assumes the client is at least version 4.4.0
and secure authentication will be used.

- 4csrvrd - send the client the public part of the server hostkey. This identifies the srvr to the client.
- 4cclient - Send a message to the server challenging it to prove it has the private hostkey.
- 4csrvrd - Respond the challenge by signing the challenge with the hostkey and sends this to the client.
- 4cclient - Verifies the signature. If verification fails, the client disconnects.
- 4csrvrd - Send the client the cipher it wants to use for encryption. This is in the form of a string such as: "Cipher=bf,Mode=CBC,Len=128"
- 4csrvrd - Create a private/public key pair from the DH params file.
- 4csrvrd - Send the public part of this key to the 4cclient along with the DH parameters.
- 4cclient - Use the DH parameters and create own private/public key pair from these parameters and send the public key to 4csrvrd.
- 4csrvrd and 4cclient - Both calculate a shared secret using their own private key and the peers public key.
- 4csrvrd and 4cclient - Both start encrypting all further messages during authentication using the this shared secret. Note that no key was sent across the network. This is the Diffie-Hellman key exchange protocol at work.

The authentication now goes into a loop until the 4cclient
successfully authenticates itself, or the 4csrvrd will
not accept any more attempts.

- 4csrvrd - Send the client the list of authentication methods it can use.
- 4cclient - Tries authenticating itself using one of the methods 4csrvrd will accept. The order the 4cclient will try the authentication methods is as follows Trusted - If 4csrvrd accepts trusted auth from this connection and this 4cclient was started with an option reqesting trusted auth, then the 4cclient sends 4csrvrd it's local username. ConnectedUser - If the 4cclient was started by another 4cclient connected to the same machine and if 4csrvrd accepts ConnectedUser auth then this 4cclient sends the username of the connected 4cclient along with a challenge response that proves it knows the original shared secret that could only be known by 4csrvrd and the 4cclient that was originally authenticated via some other method. LocalUser - If this is a local connection and 4csrvrd accepts LocalUser auth, then the 4cclient sends it's local user name. Password - If 4csrvrd accepts Password auth, then the 4cclient prompts for a username and password and sends this to 4csrvrd. None - If 4csrvrd does not accept any more authentication methods, then the 4cclient disconnects.
- When 4csrvrd gets any authentication request, it first verifies that the auth method is allowed by the AuthClient or SecurityConfig settings. If it's not then it just disconnects. The client should not be requesting an auth method that is not allowed. 4csrvrd treats an authentication requests as follows: Trusted - If the usrname does not match a trusted user for the AuthClient inform the client to try another method. If the AuthUser entry forbids the requested service or the Trusted auth method let the 4cclient try another auth method. Otherwise exit the authentication loop. Trusted auth can only be used once per authentication loop. ConnectedUser - Verify that the challenge response is correct. If it is not disconnect. If the AuthUser entry forbids the requested service or the ConnectedUser auth method let the 4cclient try another auth method. Otherwise exit the authentication loop. ConnectedUser auth can only be used once per authentication loop. LocalUser - Send a challenge to the 4cclient and wait for the response. The challenge is to read a local file with random data in it. The file is ReadOnly for the requesting user so in order to read it and pass the challenge you need to really be that user or root. If the challenge is successful, exit the authentication loop. LocalUser auth can only be used once per authentication loop. Password - Use the Operating system method of authenticating a user with a passwd. If this authentication fails, allow retry up to 3 times. If authentication succeeds, exit the authentication loop.

We have now authenticated a user but we could still forbid this
connection depending on the AuthUser entry.

- 4csrvrd - Search for an entry in the AuthUser file that permits this user to connect to the requested service. If no AuthUser entry is found, then disconnect.
- 4csrvrd - Check if the AuthUser is locked. If so, send a message to the client and disconnect.
- 4csrvrd - If the AuthUser only permits this user to connect from specific hosts, verify that the connection is allowed from the current host. If not disconnect.
- 4csrvrd - If a RunAs user is set in the AuthUser, then set the current credentials to the RunAs user. Otherwise set the current credentials to the authenticated user.
- 4csrvrd - Send a challenge string to this 4cclient that can be used along with the original DH shared secret as proof of being a connected user.
- 4csrvrd and 4cclient - Both create new symetric keys and send them to each other. Further encryption uses these new keys.
- 4csrvrd starts the process that will provides the requested service.
- 4csrvrd sends needed config info to the new process via a local pipe.
- The new server process processes all client requests.
