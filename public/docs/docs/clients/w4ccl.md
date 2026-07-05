# w4ccl

## Purpose

w4ccl is the MS Windows 4C client program.

## Usage

```text
w4ccl <option> [ <optarg> ] ...
```

## Options

- `-a <app>` — Specify app to run
- `-c <conn>` — Connection name or connection string
- `-f <filename>` — specify clseqf file.
- `-g <group>` — Name the first group to run.
- `-o [min|max|hide]` — Specify startup window options.
- `-p <program>` — Specify first program to run
- `-L` — Use the current logged on user name when trying to connect.
- `-T` — Try to connect as a trusted user.
- `-D` — Turns on debug messages
- `-V` — Turns on verbose debug messages
- `--help` — Same as -H
- `--version` — Display version number and exit.
- `--noshare` — Run with shared memory disabled.
--conn-filelist=`<connfilelist>` -
Use `<connfilelist>` instead of the connection file lists specified in the
client preferences files.

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
w4ccl -c 4cdemo -a demo -p sys.menu.tv -o hide
```

## Description

w4ccl is the Win32 interactive 4C client. You can tell w4ccl which server to connect to by using the -c `<conn>` option. If no connection is specified, then the user can select from a list of known or recent connections or add new connection. The `<conn>` option can be used in two ways. It can be the name of a known connection stored in one of the connection text files or it can be a full connection string. The full connection string looks like:

Machine=`<server>`[,ConnectionOption=`<val>`]...

Connection options are:

Name - Name of connection. This is more useful for saved connections than for using it on the command line.

Port - The port used by a TCP connection. If using the default port of 1412 you do not need to specify this.

Type - Currently must be TCP. Since the default for Type is TCP you won't need to specify Type.

App - The name of the application to connect to. This can be overridden by the -a option to w4ccl. If no App is specified, then the user will select from the application list.

Usr - The usr name to use.

Pwd - An encrypted passwd. You can use encode4c to determine what the encrypted password should look like. Currently this is not a secure encryption so you should be careful using it. It is probably better to type in the passwd every time you use it. If you use the Pwd connection option you also need the version option. Having to specify Version when specifying Pwd was an oversight and will be fixed in future clients.

Ping - How often, in number of seconds, that the 4C client should send a message to the server just to make sure it stays alive. The default is 300. A negative number implies never. You do not need to specify this option as part of the connection string unless you want it to be different than the default.

Version - This is the version of the 4C client that wrote the connection string. It is meant to be stored as part of the  connection entries in text files. You don't really need to specify this as part of a command line connection string unless you also specified Pwd.

Multiple Sessions:

w4ccl will, by default, use shared memory. On client only systems, the shared memory used is local to each user and each w4ccl session started by this user will use the same shared memory and the same lcl-clseqf.sxl file. On systems with a 4csrvr installed and 4csrvrd running, the shared memory used is global per system. Each w4ccl session started by any user will use the same shared memory and the same glbl-clseqf.sxl file. When shared memory is used, you can use the Current User client preferences and the All Users client preferences to specify how many w4ccl sessions can be run per user. You can also use the All Users client preferences to disable using shared memory.

It is no longer necessary to create a 4c.cnf file on client only systems in order to enable multiple sessions.

## See Also

Client Preferences

Back to Top

## See Also

- [4C Client Programs]({{< ref "_index.md" >}})
- [Client Preferences]({{< ref "../Config/cl-pref.md" >}})


