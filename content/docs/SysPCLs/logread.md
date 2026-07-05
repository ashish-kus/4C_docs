---
title: "sys.log_read()"
description: "reads a single log rcd"
weight: 216
draft: false
---

## Purpose

`sys.log_read()` reads a single log rcd.

## Usage

```text
ret = sys.log_read(<lclname>,<readtype>);
```

## Arguments

- `alpha <lclname>` — The name used in opening the log
- `integer <readtype>` — Either LOG_READNEXT or LOG_READEXACT

## Returns

- `0` — Log rcd read
- `-1` — Either log not open or invalid `<readtype>`

## Where Used

`sys.log_read()` can be called anytime a log is open.

## Example

```text
The log.view.det has an example of sys.log_read() using LOG_READEXACT
and the log.view.key program has an example of sys.log_read() using
LOG_READNEXT.
Both programs are in the 4cSys application.
```

## Description

`sys.log_read()` reads a single log rcd. Once read, that rcd becomes the current log record and [`sys.log_getattr()`]({{< ref "loggetattr.md" >}}), [`sys.log_getname()`]({{< ref "loggetname.md" >}}), [`sys.log_getval()`]({{< ref "loggetval.md" >}}), and [`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}}) can be used on that rcd. Before the first call to `sys.log_read()` using LOG_READNEXT, the application should call [`sys.log_seek()`]({{< ref "logseek.md" >}}). Before every call to `sys.log_read()` using LOG_READEXACT, the application should call [`sys.log_seek()`]({{< ref "logseek.md" >}}).

## See Also

[`sys.log_open()`]({{< ref "logopen.md" >}})

[`sys.log_close()`]({{< ref "logclose.md" >}})

[`sys.log_seek()`]({{< ref "logseek.md" >}})

[`sys.log_getattr()`]({{< ref "loggetattr.md" >}})

[`sys.log_getname()`]({{< ref "loggetname.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}})

[`sys.log_error()`]({{< ref "logerror.md" >}})

Back to Top

## See Also

- [sys.log_open()]({{< ref "logopen.md" >}})
- [sys.log_close()]({{< ref "logclose.md" >}})
- [sys.log_seek()]({{< ref "logseek.md" >}})
- [sys.log_getattr()]({{< ref "loggetattr.md" >}})
- [sys.log_getname()]({{< ref "loggetname.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "logcopyflds.md" >}})
- [sys.log_error()]({{< ref "logerror.md" >}})

