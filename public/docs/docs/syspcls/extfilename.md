# sys.ext_filename()

## Purpose

`sys.ext_filename()` returns the external name of a 4c file

## Usage

```text
fullpath = sys.ext_filename([ <asprog>, ] <asfile>)
```

## Arguments

- `alpha <asprog>` — Optional asprog name of the program to find `<asfile>` in.
The default is the current program.
- `asfile <asfile>` — The 4c asfile to use.

## Returns

- `alpha <fullpath>` — The external filename of the file

## Where Used

`sys.ext_filename()` can be called from anywhere.

## Description

`sys.ext_filename()` returns the external name of a 4c file. If the file is open and the file is a filesystem file, the path returned will normally be a full pathname to the file. If the file has not been opened yet, then the path returned will be the exyternal name defined in the 4c file definition for the file.

Requirements

## See Also

[`sys.open_file()`]({{< ref "openfile.md" >}})

[`sys.set_extfname()`]({{< ref "setextfname.md" >}})

Back to Top

## See Also

- [sys.open_file()]({{< ref "openfile.md" >}})
- [sys.set_extfname()]({{< ref "setextfname.md" >}})


