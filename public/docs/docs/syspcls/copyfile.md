# sys.copy_file()

## Purpose

`sys.copy_file()` copys all fields from the data buffers of one file to the data buffers of another.

## Usage

```text
ret = sys.copy_file([ <fromprog>, ] <fromfile>, [ <toprog>, ] <tofile>);
```

## Arguments

- `alpha <fromprog>` — Optional asprog name of the program to find `<fromfile>` in.
The default is the current program.
- `file <fromfile>` — The asfile name of the file to copy from.
- `alpha <toprog>` — Optional asprog name of the program to find `<tofile>` in.
The default is the current program.
- `file <tofile>` — The asfile name of the file to copy to.

## Returns

- `0` — Always returns 0

## Where Used

`sys.copy_file()` can be called from anywhere.

## Description

`sys.copy_file()` copies all fields from one files buffer area to anothers. This does not do any kind of file access or update. It is most useful when the same file is used more than once in the same program. It should not be used UNLESS the two files have the EXACT same file definition. If it is, fields that do not match in data type are not copied.

## Bugs/Features/Comments

Even after calling `sys.copy_file()` and then updating the rcd, the primary key will still have the same values it had after the last file access. This is because 4C always updates with the same primary key that it last read with. To preserve the new key, the file should be read after the call to `sys.copy_file()` using the F_VERIFY or F_VERIFYNE flag to prevent overwriting of the data fields.

## See Also

[`sys.copy_pkey()`]({{< ref "copypkey.md" >}})

[`sys.copy_data()`]({{< ref "copydata.md" >}})

[`sys.copy_fields()`]({{< ref "copyfields.md" >}})

[`sys.null_file()`]({{< ref "nullfile.md" >}})

[`sys.null_data()`]({{< ref "nulldata.md" >}})

Back to Top

## See Also

- [sys.copy_pkey()]({{< ref "copypkey.md" >}})
- [sys.copy_data()]({{< ref "copydata.md" >}})
- [sys.copy_fields()]({{< ref "copyfields.md" >}})
- [sys.null_file()]({{< ref "nullfile.md" >}})
- [sys.null_data()]({{< ref "nulldata.md" >}})


