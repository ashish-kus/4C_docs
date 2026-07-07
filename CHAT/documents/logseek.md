---
title: "sys.log_seek()"
description: "sets the next log rcd pt"
weight: 217
draft: false
---

## Purpose

`sys.log_seek()` sets the next log rcd ptr

## Usage

```text
ret = sys.log_seek(<lclname>,<logdate>,<logtime>,<logsequence>);
```

## Arguments

- `alpha <lclname>` — The name used when the log was opened.
- `date <logdate>` — The date portion of the log_idx key
- `time <logtime>` — The time portion of the log_idx key
- `integer <logsequence>` — The sequence portion of the log_idx key

## Returns

- `0` — OK
- `-1` — `<lclname>` does not refer to an open log

## Where Used

`sys.log_seek()` can be called anytime a log is open.

## Example

```text
The log.view.det and log.view.key 4C programs in the 4cSys
application both use sys.log_seek().
```

## Description

`sys.log_seek()` sets the log rcd ptr on an open log.

## See Also

[`sys.log_open()`]({{< ref "logopen.md" >}})

[`sys.log_close()`]({{< ref "logclose.md" >}})

[`sys.log_read()`]({{< ref "logread.md" >}})

[`sys.log_getattr()`]({{< ref "loggetattr.md" >}})

[`sys.log_getname()`]({{< ref "loggetname.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}})

[`sys.log_error()`]({{< ref "logerror.md" >}})

Back to Top

## See Also

- [sys.log_open()]({{< ref "logopen.md" >}})
- [sys.log_close()]({{< ref "logclose.md" >}})
- [sys.log_read()]({{< ref "logread.md" >}})
- [sys.log_getattr()]({{< ref "loggetattr.md" >}})
- [sys.log_getname()]({{< ref "loggetname.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "logcopyflds.md" >}})
- [sys.log_error()]({{< ref "logerror.md" >}})

