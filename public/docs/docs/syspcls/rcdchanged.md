# sys.rcd_changed()

## Purpose

`sys.rcd_changed()` indicates whether any of the fields in a rcd changed since the last [`sys.read_file()`]({{< ref "readfile.md" >}}) call.

## Usage

```text
ret = sys.rcd_changed(<asfile>);
```

## Arguments

- `<asfile>` — the asfile name of the file you are checking

## Returns

- `-1` — Files last access was not a successful sys.read_file().
- `0` — Rcd has not changed since last sys.read_file() call.
- `1` — Rcd has changed since last sys.read_file() call.

## Where Used

`sys.rcd_changed()` can be called from anywhere but probably would be called right before a call to [`sys.upd_file()`]({{< ref "updfile.md" >}}).

## Description

`sys.rcd_changed()` lets the program know if a rcd has changed since it was read. If the file was opened with F_SAVEBUF, then no rereading of the rcd is necessary. However, if F_SAVEBUF was not used, then the file must be reread in order for the compare to be done. If you expect to make lots of calls to `sys.rcd_changed()` for a particular file, it is recommened that you open the file with F_SAVEBUF.

## See Also

[`sys.open_file()`]({{< ref "openfile.md" >}})

Back to Top


