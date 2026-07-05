---
title: "sys.log_getname()"
description: "returns a fieldname of a field in the log file"
weight: 213
draft: false
---

## Purpose

`sys.log_getname()` returns a fieldname of a field in the log file.

## Usage

```text
aval = sys.log_getname(<lclname>,<fldidx>);
```

## Arguments

- `alpha <lclname>` — The name used to open the log file.
- `integer <fldidx>` — The idx of the fld in the current log rcd.
The `<fldidx>` must be >= 0 and < total number of fields in the
current log rcd.

## Returns

- `alpha <aval>` — The name of the requested field.
- `""` — Error

## Where Used

`sys.log_getname()` can be called anytime a log file is open and there is a current log rcd.

## Example

```text
The 4cSys application uses sys.log_getname() in the log.view.det
program.
```

## Description

`sys.log_getname()` returns a fieldname of a field in the log file.

## See Also

[`sys.log_open()`]({{< ref "logopen.md" >}})

[`sys.log_close()`]({{< ref "logclose.md" >}})

[`sys.log_seek()`]({{< ref "logseek.md" >}})

[`sys.log_read()`]({{< ref "logread.md" >}})

[`sys.log_getattr()`]({{< ref "loggetattr.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}})

[`sys.log_error()`]({{< ref "logerror.md" >}})

Back to Top

## See Also

- [sys.log_open()]({{< ref "logopen.md" >}})
- [sys.log_close()]({{< ref "logclose.md" >}})
- [sys.log_seek()]({{< ref "logseek.md" >}})
- [sys.log_read()]({{< ref "logread.md" >}})
- [sys.log_getattr()]({{< ref "loggetattr.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "logcopyflds.md" >}})
- [sys.log_error()]({{< ref "logerror.md" >}})

