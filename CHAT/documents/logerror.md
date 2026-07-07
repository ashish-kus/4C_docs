---
title: "sys.log_error()"
description: "writes a rcd to the log_err file"
weight: 211
draft: false
---

## Purpose

`sys.log_error()` writes a rcd to the log_err file.

## Usage

```text
ret = sys.log_err(<lclname>,<filename>,<severity>,<msg>);
```

## Arguments

- `alpha <lclname>` — A name.  It does not need to refer to an open log.
- `alpha <filename>` — A 4c filename.
- `alpha <severity>` — a one char severity code. Should be '0' - '9'
- `alpha <msg>` — Application specific message

## Returns

- `0` — Always returned

## Where Used

`sys.log_error()` can be called from anywhere.

## Description

`sys.log_error()` writes a rcd to the log_err file. The log_err file is on the same system that the 4csrvr is running on. It has nothing to do with the system that any open log files refer to. The idea was to allow applications that read log files, to be able to write errors to a common file. The 4C system will also write logging errors to this file. This file is purged by the log.purge.1 program. Systems that use logging or use `sys.log_error()` need to make sure that the log.purge.1 program is run periodically.

## See Also

[`sys.log_open()`]({{< ref "logopen.md" >}})

[`sys.log_close()`]({{< ref "logclose.md" >}})

[`sys.log_seek()`]({{< ref "logseek.md" >}})

[`sys.log_read()`]({{< ref "logread.md" >}})

[`sys.log_getattr()`]({{< ref "loggetattr.md" >}})

[`sys.log_getname()`]({{< ref "loggetname.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}})

Back to Top

## See Also

- [sys.log_open()]({{< ref "logopen.md" >}})
- [sys.log_close()]({{< ref "logclose.md" >}})
- [sys.log_seek()]({{< ref "logseek.md" >}})
- [sys.log_read()]({{< ref "logread.md" >}})
- [sys.log_getattr()]({{< ref "loggetattr.md" >}})
- [sys.log_getname()]({{< ref "loggetname.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "logcopyflds.md" >}})

