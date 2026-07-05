# sys.null_file()

## Purpose

`sys.null_file()` sets all file variables for file to a blank or 0.

## Usage

```text
ret = sys.null_file(<asfile>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file to null.

## Returns

- `0` — OK
- `-1` — Invalid `<asfile>`

## Where Used

`sys.null_file()` can be called from anywhere.

## Description

`sys.null_file()` sets all file variables for `<asfile>` to an empty string for alpha file variables and to a 0 for numeric file variables. `sys.null_file()` does not modify any permanent data. All modification is done on the file variables in memory.

## See Also

[`sys.null_data()`]({{< ref "nulldata.md" >}})

[`sys.null_field()`]({{< ref "nullfield.md" >}})

Back to Top

## See Also

- [sys.null_data()]({{< ref "nulldata.md" >}})
- [sys.null_field()]({{< ref "nullfield.md" >}})


