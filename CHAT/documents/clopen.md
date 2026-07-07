---
title: "sys.cl_open()"
description: "opens or processes a file on the client machine usin"
weight: 35
draft: false
---

## Purpose

`sys.cl_open()` opens or processes a file on the client machine using the appropriate client program.

## Usage

```text
ret = sys.cl_open(<path>,<opentype>[|CL_NOWAIT][|CL_NOCONVERT][|CL_NOEXPAND});
```

## Arguments

- `alpha <path>` — Full pathname of the file on the client machine.
- `integer <opentype>` — Currently, this can be one of:
CL_OPEN
CL_EDIT
CL_EXPLORE
CL_PRINT
Any of the above types can be ored with 1 or more of CL_NOWAIT, CL_NOCONVERT, and
CL_NOEXPAND

## Returns

- `-1` — Error.
Possibly client version < 4.2.0.
Other errors from the client should generate messages.
- `0` — File opened/processed on client.

## Where Used

`sys.cl_open()` can be called from anywhere.

## Example

```text
In order to open an html file in a browser,
the following may work:



sys.cl_open("c:/tmp/index.html",CL_OPEN);



You can also run the demo program, demo.clopen.1,
to see other possibilities.
```

## Description

`sys.cl_open()` is used to allow the client machine's shell to process a file request. The client machine's shell determines the program to use and where the program is located. Different file extensions will have different meanings. In some cases CL_OPEN and CL_EDIT may do the same thing and in other cases they won't. The 4C client does not wait for the client program to exit. However, if the client program creates a window, it will get the focus. If it does not create a window, then you should specify CL_NOWAIT as part of the opentype parameter.

When opening a file on a Win32 client, the 4C Client will normally convert backslashes to forward slashes. When opening any type of URL this conversion is not done. You can explicitly avoid this type of conversion by specifying CL_NOCONVERT in the `sys.cl_open()` statement.

If the client is at version 4.8.0 or higher it will expand environment variables on the client. The env vars should be specified as ${ENVVAR} in the path. You can prevent this expansion by specifying CL_NOEXPAND with the flags argument.

Requirements

CL_NOCONVERT requires both client and server to be at version 4.6.3 or higher.

CL_NOEXPAND requires the 4c server to be at version 4.8.0 or higher

Only clients at version 4.8.0 or higher will expand env vars embedded in `<path>`.

## See Also

[`lsh()`]({{< ref "lsh.md" >}})

Back to Top

## See Also

- [lsh()]({{< ref "lsh.md" >}})

