# sys.get_filename()

## Purpose

`sys.get_filename()` returns the 4C filename for `<asfile>`

## Usage

```text
<filename> = sys.get_filename([ <asprog>, ] <asfile>);
```

## Arguments

- `alpha <asprog>` — Optional asprog name of the program to find `<asfile>` in.
The default is the current program.
asfile `<asfile>`

## Returns

alpha `<filename>`

## Where Used

`sys.get_filename()` can be called from anywhere.

## Description

`sys.get_filename()` returns the 4C filename for `<asfile>` It can be useful in PCLs that use an asfile as input parameters. Internally, 4C saves an asfile as an integer, so this is a way for an application to determine at runtime what 4C filename is associated with a PCL parameter.

## See Also

[`sys.get_asfile()`]({{< ref "getasfile.md" >}})

Back to Top

## See Also

- [sys.get_asfile()]({{< ref "getasfile.md" >}})


