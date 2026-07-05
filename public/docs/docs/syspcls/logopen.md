# sys.log_open()

## Purpose

`sys.log_open()` opens a 4c log for reading.

## Usage

```text
ret = sys.log_open(<lclname>,<connectstr>,<remotename>,<flags>);
```

## Arguments

- `alpha <lclname>` — The name that the local 4csrvr will use to refer to this
log.
- `alpha <connectstr>` — A valid 4C connection string.
- `alpha <remotename>` — The name that is used for the log on the machine
where the log resides.
This will be the key to the log_hdr file on that machine.
- `integer <flags>` — Any combination of
LOG_DEFAULT, LOG_IMAGE_PKEY, LOG_IMAGE_BEFORE, LOG_IMAGE_AFTER, LOG_FULLPATH, LOG_SENDCREATE
LOG_DEFAULT is equivalent to LOG_IMAGE_PKEY|LOG_IMAGE_BEFORE|LOG_IMAGE_AFTER|LOG_FULLPATH.
LOG_SENDCREATE is not included due to older applications that might not
be expecting to get an update type of "Create".

## Returns

- `0` — Log opened OK
- `-1` — Error opening log
sys.errno will contain the error number.

## Where Used

`sys.log_open()` will normally be used only very special purpose 4C programs.

## Example

```text
The log.view program uses sys.log_open().
```

## Description

`sys.log_open()` opens a remote 4C log file for reading. On the remote machine this will start a new srvr process, 4clogrdr. Once a log has been opened, it stays open until closed by the application or until the 4C program that opened it exits. Any programs pushed can access the log as long as they use the same name it was opened as.

## See Also

[`sys.log_close()`]({{< ref "logclose.md" >}})

[`sys.log_seek()`]({{< ref "logseek.md" >}})

[`sys.log_read()`]({{< ref "logread.md" >}})

[`sys.log_getattr()`]({{< ref "loggetattr.md" >}})

[`sys.log_getname()`]({{< ref "loggetname.md" >}})

[`sys.log_getval()`]({{< ref "loggetval.md" >}})

[`sys.log_copyflds()`]({{< ref "logcopyflds.md" >}})

[`sys.log_error()`]({{< ref "logerror.md" >}})

Back to Top

## See Also

- [sys.log_close()]({{< ref "logclose.md" >}})
- [sys.log_seek()]({{< ref "logseek.md" >}})
- [sys.log_read()]({{< ref "logread.md" >}})
- [sys.log_getattr()]({{< ref "loggetattr.md" >}})
- [sys.log_getname()]({{< ref "loggetname.md" >}})
- [sys.log_getval()]({{< ref "loggetval.md" >}})
- [sys.log_copyflds()]({{< ref "logcopyflds.md" >}})
- [sys.log_error()]({{< ref "logerror.md" >}})


