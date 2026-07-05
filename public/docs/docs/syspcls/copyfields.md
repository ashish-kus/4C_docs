# sys.copy_fields()

## Purpose

`sys.copy_fields()` copies specified fields from the data buffers of one file to the data buffers of another.

## Usage

```text
ret = sys.copy_fields(<fromfile>,<fsfldnum>,<tofile>,<tsfldnum>,<nflds>);
```

## Arguments

- `file <fromfile>` — The asfile name of the file to copy from.
- `integer <fsfldnum>` — The start field number in the from file to start
the copy.
Use the CDEF for this field.
- `file <tofile>` — The asfile name of the file to copy to.
- `integer <tsfldnum>` — The start field number in the from file to start
the copy.
Use the CDEF for this field.
- `integer` — nflds - The number of fields to copy.

## Returns

- `0` — OK
- `-1` — Illegal number of fields specified.

## Where Used

`sys.copy_fields()` can be called from anywhere.

## Description

`sys.copy_fields()` copies the specified fields from one files buffer area to anothers. This does not do any kind of file access or update. The fields being copied need to be of the same type.

## See Also

[`sys.copy_file()`]({{< ref "copyfile.md" >}})

[`sys.copy_data()`]({{< ref "copydata.md" >}})

[`sys.null_file()`]({{< ref "nullfile.md" >}})

[`sys.null_data()`]({{< ref "nulldata.md" >}})

Back to Top

## See Also

- [sys.copy_file()]({{< ref "copyfile.md" >}})
- [sys.copy_data()]({{< ref "copydata.md" >}})
- [sys.null_file()]({{< ref "nullfile.md" >}})
- [sys.null_data()]({{< ref "nulldata.md" >}})


