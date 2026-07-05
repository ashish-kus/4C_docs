# sys.null_data()

## Purpose

`sys.null_data()` sets all non primary key file variables for a file to a blank or 0.

## Usage

```text
ret = sys.null_data(<asfile>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file to null the data for.

## Returns

- `0` — OK
- `-1` — Invalid `<asfile>`

## Where Used

`sys.null_data()` can be called from anywhere.

## Description

`sys.null_data()` sets all non primary key file variables for `<asfile>` to an empty string for alpha file variables and to a 0 for numeric file variables. `sys.null_data()` does not modify any permanent data. All modification is done on the file variables in memory.

## See Also

[`sys.null_file()`]({{< ref "nullfile.md" >}})

[`sys.null_field()`]({{< ref "nullfield.md" >}})

Back to Top

## See Also

- [sys.null_file()]({{< ref "nullfile.md" >}})
- [sys.null_field()]({{< ref "nullfield.md" >}})


