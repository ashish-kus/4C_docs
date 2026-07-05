# sys.close_file()

## Purpose

`sys.close_file()` closes a file.

## Usage

```text
sys.close_file(<asfile>,[<closeflags>]);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file to close.
- `integer <closeflags>` — Optional argument that can
be a combination of the following flags:
- `F_CLOSEDEFAULT` — Normal close
- `F_CLOSECONN` — Close the connection to the external file server or the
external database if this file has a connection open.
F_CLOSECURSOR -
Indicate that sequential processing of an sql stmt is done and
that the connection may now be closable

## Returns

- `0` — sys.close_file() always returns 0.

## Where Used

`sys.close_file()` can be called from anywhere.

## Description

`sys.close_file()` will close a file if it is open. If it is a temporary file, it will be removed.

## Bugs/Features/Comments

It is not usually necessary for the application to call `sys.close_file()` because 4C manages opens and closes as needed. One place that it may be helpful though is in forcing the close of a remote file server or external database connection. The F_CLOSECONN flag is used for that purpose.

## See Also

[`sys.open_file()`]({{< ref "openfile.md" >}})

[`sys.conn_close()`]({{< ref "connclose.md" >}})

Back to Top

## See Also

- [sys.open_file()]({{< ref "openfile.md" >}})
- [sys.conn_close()]({{< ref "connclose.md" >}})


