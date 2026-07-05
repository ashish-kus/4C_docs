---
title: "sys.log_close()"
description: "closes an open log"
weight: 209
draft: false
---

## Purpose

`sys.log_close()` closes an open log.

## Usage

```text
ret = sys.log_close(<lclname>);
```

## Arguments

- `alpha <lclname>` — The name specified when the log was opened.

## Returns

- `0` — OK
- `-1` — `<lclname>` is not a currently open log.

## Where Used

`sys.log_close()` can be called from anywhere.

## Description

`sys.log_close()` explicitly closes an open log. Logs are implicitly closed if the application does not call [`sys.close_log()`]({{< ref "closelog.md" >}}) and the 4C program that opened the log exits.

## See Also

[`sys.log_open()`]({{< ref "logopen.md" >}})

[`sys.log_seek()`]({{< ref "logseek.md" >}})

[`sys.log_read()`]({{< ref "logread.md" >}})

[`sys.log_getattr()`]({{< ref "loggetattr.md" >}})

[`sys.log_getname()`]({{< ref "loggetname.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}})

[`sys.log_error()`]({{< ref "logerror.md" >}})

Back to Top

## See Also

- [sys.log_open()]({{< ref "logopen.md" >}})
- [sys.log_seek()]({{< ref "logseek.md" >}})
- [sys.log_read()]({{< ref "logread.md" >}})
- [sys.log_getattr()]({{< ref "loggetattr.md" >}})
- [sys.log_getname()]({{< ref "loggetname.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "logcopyflds.md" >}})
- [sys.log_error()]({{< ref "logerror.md" >}})

