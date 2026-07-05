# sys.acc_mode()

## Purpose

`sys.acc_mode()` returns the the last access mode for a file.

## Usage

```text
accmode = sys.acc_mode([ <asprog>, ] <asfile>);
```

## Arguments

- `alpha <asprog>` — Optional asprog name of the program to find `<asfile>` in.
The default is the current program.
- `asfile <asfile>` — The asfile name of the file to return the
last access mode for.

## Returns

integer accmode
- `ACC_ADD` — The last access of `<asfile>` was for add.
- `ACC_DELETE` — The last access of `<asfile>` was for delete.
- `ACC_MODIFY` — The last access of `<asfile>` was for modify.
- `ACC_NORMAL` — `<asfile>` has not been read for any update mode.
accessed yet, or it has already been updated.

## Where Used

`sys.acc_mode()` can be called from anywhere.

## Description

`sys.acc_mode()` returns the mode that `<asfile>` will be updated in if you were to call [`sys.upd_file()`]({{< ref "updfile.md" >}}) at the same pt in your program. Thus a [`sys.read_file()`]({{< ref "readfile.md" >}}) that returns an error for whatever reason will cause `sys.acc_mode()` to return ACC_NORMAL. A [`sys.read_file()`]({{< ref "readfile.md" >}}) for delete that is successful will cause `sys.acc_mode()` to return ACC_DELETE. Once [`sys.upd_file()`]({{< ref "updfile.md" >}}) is called `sys.acc_mode()` will return ACC_NORMAL. If your program does not call [`sys.upd_file()`]({{< ref "updfile.md" >}}), but returns to a state prior to the state it was in when the last [`sys.read_file()`]({{< ref "readfile.md" >}}) was called `sys.acc_mode()` will also return ACC_NORMAL. This means that if you read a file on field 4 in modify mode, but you do not call [`sys.upd_file()`]({{< ref "updfile.md" >}}) and your program procresses field 4 again, or some other previous state, fld 3, 2, 1 or SLOOP, then `sys.acc_mode()` will return ACC_NORMAL, not ACC_MODIFY.

## See Also

[`sys.read_file()`]({{< ref "readfile.md" >}})

[`sys.upd_file()`]({{< ref "updfile.md" >}})

Back to Top

## See Also

- [sys.read_file()]({{< ref "readfile.md" >}})
- [sys.upd_file()]({{< ref "updfile.md" >}})


