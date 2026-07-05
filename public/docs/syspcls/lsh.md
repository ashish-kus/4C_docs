# lsh()

## Purpose

`lsh()` runs a command on the local client machine.

## Usage

```text
ret = lsh(<cmd>,[<options>]);
```

## Arguments

- `<cmd>` — The cmd to run, including all arguments.
The arguments and the command name must be separated
by spaces.
- `<options>` — This is an optional argument that must be either:
LSH_DEFAULT or any combination of the following flags:
- `LSH_WAIT` — Wait for the lsh process to terminate
before continuing.
- `LSH_NOWAIT` — Do not wait for the lsh process to terminate
before continuing.
- `LSH_CONNECT` — Specify this if the client program you are starting will
be connecting to a new 4c server process on the 4c server machine.
If security allows a user to connect using the ConnectedUser auth method,
then the new client program will be able to connect without having
to specify a user name or passwd.
LSH_NOEXPAND -
Specify this to prevent the client from expanding env vars embedded in `<cmd>`.
LSH_NOCONVERT -
Don't convert special characters before running command.
This is important if it is necessary to leave embedded single quotes in the command.
If not specified, LSH_DEFAULT is used.
Currently LSH_DEFAULT is the same as LSH_NOWAIT.

## Returns

- `0` — Command Submitted to Client
- `-1` — Error - Communication error with client.

## Where Used

`lsh()` can be called from anywhere.

## Description

`lsh()` runs a local command on the client machine. If LSH_WAIT is specified as an option, then control will not return to the 4csrvr process until the local command finishes. Don't use this option when calling a program that uses DDE. If you do, both w4ccl and the called program may hang. Otherwise, control returns immediately to the 4csrvr process.

Requirements

Only clients at version 4.8.0 or higher will expand env vars embedded in `<cmd>`

The 4c server needs to be at version 4.8.0 or higher in order to use LSH_NOEXPAND.

## Bugs/Features/Comments

Currently, there is no way to get the exit status of a command run on the client machine.

## See Also

[`sys.cl_open()`]({{< ref "clopen.md" >}})

[`sh()`]({{< ref "sh.md" >}})

Back to Top

## See Also

- [sys.cl_open()]({{< ref "clopen.md" >}})
- [sh()]({{< ref "sh.md" >}})


