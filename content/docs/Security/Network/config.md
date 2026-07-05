---
title: "4C Network Security Configuration"
description: "System wide security settings"
weight: 2
draft: false
---

Controls which users or groups of users are allowed to
connect to which services.
4C allows you to configure the security
on your 4c server system with several new config
files.
All security configuration files are stored in the
directory HOME_4C/security.

All security config files can have comments in them.
Comments start with a '#' and continue until the end of the line they
start on.

The security config files are:

- SecurityConfig - System wide security settings
- AuthClient - Controls which client machines can connect to which 4c services.
- Group - An optional file that allows you to define groups of 4C users.
- AuthUser - Controls which users or groups of users are allowed to connect to which services.

The following are also stored in this directory:

- The server's host key, either a DSA private key, or a RSA private key.
- The DH parameter file.
- One or more authentication logs. The current one is always named auth.log. The next older one is auth.log.1, followed by auth.log.2 and so on up through auth.log.9.

The security directory as well as all the files in it,
must be readable only by root on Unix systems
and by Administrator or LocalSystem on NT systems.
If any other users have access to this directory or the
files in it, 4csrvrd will not start.

---

## 4C Security - SecurityConfig

The SecurityConfig file allows you to set global
non changing security options as well as default values
for options that can change depending on client machine
and user.
The options that can be specified in the SecurityConfig file
are:

- SecurityLevel - Highest, High, Medium, Low, Lowest, or None. If you specify SecurityLevel None, then 4C does not use any Security. Currently, other than none, all SecurityLevels act the same. I expect this to evolve over time, and would suggest using either medium or high as the SecurityLevel.
- KeyExchange - The method of KeyExchange. Currently this must be: Type=DH,Filename=`<dhparamfile>`
- MinClientVersion - Optional. This is the default min client version you want to allow to connect. It can be overridden per AuthClient entry if you want. If you allow client versions earlier than 4.4.0 to connect, they connect and run insecurely.
- Encryption - A 4C encryption description such as: Cipher=bf,Len=128,Mode=CBC.
- Auth - The default authentication method that you are allowing clients to use. This can also be overridden per AuthClient entry or per AuthUser entry. This entry wil be one or more of the following: Password, LocalUser, ConnectedUser, Trusted, Any Separate multiple service types by commas.
- Service - The default services that you are allowing clients to connect to. This can also be overridden per AuthClient entry or per AuthUser entry. This entry wil be one or more of the following: Run, Dev, Csum, Logrdr, fs, fs/ro, share, pwd, Any Separate multiple service types by commas.
- HostKey - This must be specified and will look like: HostKey Type=RSA,Filename=hostkey_rsa

Here is a sample SecurityConfig file:

```text
SecurityLevel High
#
# dont allow any insecure connections as a default
# this may be overriden in our AuthClient file for users
# on our vpn.
#
MinClientVersion 4.4.0
KeyExchange Type=DH,Filename=dhparam.pem
HostKey Type=RSA,Filename=hostkey_rsa
Encryption Cipher=bf,Len=128,Mode=CBC # This is pretty strong
#
# Default service to Run only.
#
Service Run
#
# Allow any authentication methods
#
Auth Any
```

---

## 4C Security - AuthClient

The AuthClient config file allows you to define which client machines
are allowed to connect to which 4C services.
You can override some of SecurityConfig default settings.
Each entry in the AuthClient file can refer to multiple
host machines as well as 1 or more services.
4C searches for an entry in the AuthClient file that matches the incoming
host and the requested service.
If one is not found, the connection is terminated without sending
a message to the client.
If you want to send a message to the client,
there must be an entry in the AuthClient which has an option of
"Refuse True" as well as the message you want the client to see.
There will be an example of this after the description of the
options.

The following options are allowed in the AuthClient config file.

- Client - Each entry in the AuthClient file starts with "Client" at the start of a line and as the only work on that line. All the rest of the options are indented by whitespace
- Host - A hostname, or an numeric ip address. You can use a '*' to indicate part of the address. You can cave as many Host entries per client entry as you wish. Here are a few sample Host entries: `Host *.earthlink.com Host 192.168.*.* Host 10.0.0.50 Host 4csoftware.com`
- Auth - You can use the Auth option to override the SecurityConfig default for authentication methods.
- Service - You can use the Service option to override the default services specified in SecurityConfig.
- MinClientVersion - Can be used to override the default from SecurityConfig
- TrustedUser - You can use this to specify which remote users are allowed to connect as trusted and what local user they connect as. You can use "@Any" for the remote username to indicate any user on that machine. You can use "@RemoteUser" for the local user name to indicate the local name is the same as the remote user name.
- Refuse - Specify True if you want to refuse connections coming from a matching host connecting to a matching service.
- Message - This is the message sent to the client if the connection is refused. If this is not specified, no message is sent.

Here is a sample AuthClient file:

```text
#
# We need to have a localhost entry
# so that the 4cprt and 4cbuild processes
# can start
Client
Host localhost
Auth LocalUser,Password
#
# Let users on our network have pretty much full access
#
Client
Host 192.100.*.*
Host 192.200.*.*
Auth Any
Service Any
MinClientVersion 4.2.6
#
# This machine should only connect to the fs service in read only mode
# we trust user usr4c and user kenglish on this machine and let them
# connect to us as user test4c
#
Client
Host 206.228.110.139
Service fs/ro
Auth Trusted
TrustedUser RemoteUser=usr4c,LocalUser=test4c
TrustedUser RemoteUser=kenglish,LocalUser=test4c
#
# We dont want the above client connecting to any other service
#
Client
Host 206.228.110.139
Service Any
Refuse True
Message "*** Connection Refused ***"
#
# We dont want anyone else connection to any
# 4C Service. We dont send this client a message
#
Client
Host *.*.*.*
Service Any
Refuse True
```

---

## 4C Security - Group

The Group config file is optional.
You can use it to define groups of users
that then can be referred to in the AuthUser config
file using the group name.
There is a special group that is always implicitly defined
whether you use the Group file or not.
This is the "allusers" group and as the name implies
includes all users.
Here's an example Group file:

A user can be in more than one group.
This Group concept has nothing to do with
the operating systems concept of a group.

---

## 4C Security - AuthUser

The AuthUser config file lets you define which users are allowed
to connect to which services and from which machines.
You can further limit the services a user can use and further limit
the authentication methods they can use.
You can specify some authenticated users run with another users
credentials.
You can specify values for environment variables and specify
which applications a user can access.
If a user is not identified by an entry in the AuthUser file,
the user will not be allowed to connect.
Here are the options you can specify in the AuthUser config file:

- User - Each entry in the AuthUser file starts with User at the beginning of a line and as the only work on that line. The options that go with a particular AuthUser entry are always indented with some whitespace.
- Allow - Comma separated list of usernames and group names that this AuthUser entry apply to. Group names are distinguished from user names with an '@' as the first character.
- Ignore - Comma separated list of usernames and group names that this AuthUser entry does not apply to. The ignore list is always checked before the allow list.
- Host - Optional list of hosts users can connect from. If no Host is specified in an AuthUser entry, then the AuthUser entry will allow connecting from anywhere.
- Service - Comma separated list of services that this AuthUser entry allows. This can be used to further limit the services allowed by SecurityConfig or AuthClient, but not to augment it.
- Auth - Comma separated list of authentication methods this AuthUser entry allows. This can be used to further limit the auth methods allowed by SecurityConfig or AuthClient, but not to augment it.
- Locked - Account is locked.
- Message - Message to display to user indicating account is locked.
- RunAsUser - Username to run as after authentication succeeds.
- RunAsPassword - Sometimes needed on NT. Do not use this on Unix.
- Env - Environment variables to set when this user is authenticated. Each env line looks like: `Env ENVVAR=`<envval>``
- Application - Comma separated list of applications that the users are allowed to use. You can still limit applications in the _4CSRVRCONFIG file.

Here is a sample AuthUser file:

```text
#
# Authorized Users
# Only Users Listed in this file are allowed
# to connect.
#
# Allow dev users and postgres to connect only from
# internal network. Ignore kevin in this entry so he can
# connect from anywhere
#
User
Allow @dev
Allow postgres
Ignore kevin
Host 192.168.*.*
#
# No restriction on kevin where he can connect from
#
User
Allow kevin
Service Any
#
# Allow anyone in the demo group to run demo application
# only. Always run with the credentials of user "demo"
#
User
Allow @demo
RunAsUser demo # force all to be demo
Service Run
Application demo
Env XLEXTTYPE=testpsql
Env FCCODIV=AAABBBCCC001
```

Here's another sample that just allows all users
to connect without putting any restrictions
on them.

```text
User
Allow @allusers
```


## Additional Notes

a,b,c,d,e,f
