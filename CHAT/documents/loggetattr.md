---
title: "sys.log_getattr()"
description: "returns an attribute associated wit"
weight: 212
draft: false
---

## Purpose

`sys.log_getattr()` returns an attribute associated with a single log rcd.

## Usage

```text
val = sys.log_getattr(<lclname>,<attrtype>,[ <filename> ]);
```

## Arguments

- `alpha <lclname>` — The name specified in sys.open_log()
- `integer <attrtype>` — One of
LOG_ATTR_DATE
LOG_ATTR_TIME
LOG_ATTR_ISEQUENCE
LOG_ATTR_NFIELDS
LOG_ATTR_NPKFIELDS
LOG_ATTR_UPDTYPE
LOG_ATTR_FILENAME
LOG_ATTR_USER
LOG_ATTR_APPPROG
LOG_ATTR_FCPROG
LOG_ATR_CLIPADDR
LOG_ATTR_STATUS
LOG_ATTR_FILESTATUS
LOG_ATTR_FULLPATH
LOG_ATTR_SFTIME
- `alpha <filename>` — Optional argument only needed when `<attrtype>` is
LOG_ATTR_FILESTATUS.

## Returns

The value of the requested attribute is returned in `<val>`. `<val>` can be either an alpha variable or an integer variable.

## Where Used

`sys.log_getattr()` can be called anytime a log file is open. Except for LOG_ATTR_STATUS and LOG_ATTR_FILESTATUS, there needs to be a current log rcd when calling `sys.log_getattr()`.

## Example

```text
The log.view.det and the log.view.key programs have examples
of using sys.log_getattr().
Both programs are in the 4cSys application.
```

## Description

`sys.log_getattr()` returns an attribute associated with a single log rcd. The attributes that can be queried are as follows:

LOG_ATTR_DATE - The date of the log rcd.

LOG_ATTR_TIME - The time of the log rcd.

LOG_ATTR_ISEQUENCE - The integer sequence number of the log rcd.

LOG_ATTR_NFIELDS - The number of data fields from the corresponding 4C file written to the log rcd.

LOG_ATTR_NPKFIELDS - The number of primary key fields from the correspinding 4C file written to the log rcd.

LOG_ATTR_UPDTYPE - The update type can be one of, "Add", "Modify", "Delete", or "FWrite"

LOG_ATTR_FILENAME - The 4C filename corresponding to the log rcd.

LOG_ATTR_USER - The 4C user that wrote the log rcd.

LOG_ATTR_APPPROG - The 4C application program that wrote the log rcd. This won't be set for updates done with 4C utility programs like xlfile.

LOG_ATTR_FCPROG - The 4C executable that wrote the log rcd.

LOG_ATR_CLIPADDR - The ip addr of the client that caused the log rcd to be written.

LOG_ATTR_STATUS - The status of the log, either LOG_STATUS_RUNNING or LOG_STATUS_NONE.

LOG_ATTR_FILESTATUS - The staus of a single file associated with the log. The status will be one of LOG_STATUS_RUNNING or LOG_STATUS_NONE.

LOG_ATTR_FULLPATH - The fullpath to the original file that generated the current log record

LOG_ATTR_SFTIME - The compile time of the 4C fle definition used for the current log record. This can be useful when it is necessary for the log reading system to automatically update a file definition that may be out of sync with the logging system. The sftime returned can be compared to the sftime in the local sys.file_hdr and if necessary a more recent file definition can be fetched.

## See Also

[`sys.log_open()`]({{< ref "logopen.md" >}})

[`sys.log_close()`]({{< ref "logclose.md" >}})

[`sys.log_seek()`]({{< ref "logseek.md" >}})

[`sys.log_read()`]({{< ref "logread.md" >}})

[`sys.log_getname()`]({{< ref "loggetname.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}})

[`sys.log_error()`]({{< ref "logerror.md" >}})

Back to Top

## See Also

- [sys.log_open()]({{< ref "logopen.md" >}})
- [sys.log_close()]({{< ref "logclose.md" >}})
- [sys.log_seek()]({{< ref "logseek.md" >}})
- [sys.log_read()]({{< ref "logread.md" >}})
- [sys.log_getname()]({{< ref "loggetname.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "logcopyflds.md" >}})
- [sys.log_error()]({{< ref "logerror.md" >}})

