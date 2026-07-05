# sys.auth_userpwd()

## Purpose

`sys.auth_userpwd()` uses the OS to authenticate a username/password on the server.

## Usage

```text
ret = sys.auth_userpwd(<username>,<passwd>);
```

## Arguments

alpha `<username>`

alpha `<password>`

## Returns

- `0` — User authenticated OK.
- `-1` — User authentication failed.

## Where Used

`sys.auth_userpwd()` can be called from anywhere. Most common uses of `sys.auth_userpwd()` include unlocking the workstation and allowing access to privileged application programs.

## Example

```text
See the lockscreen.s and getpwd.1 program in the demo
application for an example.
```

## Description

`sys.auth_userpwd()` can be used to authenticate a username/password on the 4c server host. `sys.auth_userpwd()` sends a message to the 4csrvrd daemon program which uses the underlying OS security system to do the authentication. It is more secure to use `sys.auth_userpwd()` to verify a user's credentials than to use your own password mechanism. Another advantage of using `sys.auth_userpwd()` over maintaining your own passwd file is that there is no need to try to keep multiple passwords for the same user name in sync. `sys.auth_userpwd()` can be used with any username known to the OS. It is not necessary to use the currently authenticated user, though that is the more common case.

`sys.auth_userpwd()` does not change the credentials of the current 4csrvr process in any way.

## Bugs/Features/Comments

When `sys.auth_userpwd()` fails, it is not possible to tell if the failure was due to expired passwd or invalid passwd.

## See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})


