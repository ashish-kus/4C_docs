# sys.log_copyflds()

## Purpose

`sys.log_copyflds()` copies log rcd data to 4c file variables.

## Usage

```text
ret = sys.log_copyflds(<lclname>,<asfile>,<imagetype>);
```

## Arguments

- `alpha <lclname>` — The name used to open the log file.
- `asfile <asfile>` — The asfile name of the file to copy to.
- `integer <imagetype>` — One of LOG_IMAGE_PKEY, LOG_IMAGE_BEFORE,
or LOG_IMAGE_AFTER.

## Returns

- `>= 0` — The number of fields copied.
- `< 0` — Error

## Where Used

`sys.log_copyflds()` can be called anytime a log file is open and it has a current rcd.

## Description

`sys.log_copyflds()` copies log rcd data to 4c file variables. Fields are copied by matching name only, so if the file definition of the rcd in the log file does not match the file definition of `<asfile>` it is OK. Only those fields with matching names will be copied. The 4c file variables are updated in memory only. No file update is done. This PCL is expected to be useful for replication applications.

## See Also

[`sys.log_open()`]({{< ref "logopen.md" >}})

[`sys.log_close()`]({{< ref "logclose.md" >}})

[`sys.log_seek()`]({{< ref "logseek.md" >}})

[`sys.log_read()`]({{< ref "logread.md" >}})

[`sys.log_getattr()`]({{< ref "loggetattr.md" >}})

[`sys.log_getname()`]({{< ref "loggetname.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_error()`]({{< ref "logerror.md" >}})

Back to Top

## See Also

- [sys.log_open()]({{< ref "logopen.md" >}})
- [sys.log_close()]({{< ref "logclose.md" >}})
- [sys.log_seek()]({{< ref "logseek.md" >}})
- [sys.log_read()]({{< ref "logread.md" >}})
- [sys.log_getattr()]({{< ref "loggetattr.md" >}})
- [sys.log_getname()]({{< ref "loggetname.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_error()]({{< ref "logerror.md" >}})


