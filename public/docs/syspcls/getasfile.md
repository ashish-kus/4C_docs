# sys.get_asfile()

## Purpose

`sys.get_asfile()` returns the 4C asfile name for `<asfile>`

## Usage

```text
<name> = sys.get_asfile([ <asprog>, ] <asfile>);
```

## Arguments

- `alpha <asprog>` — Optional asprog name of the program to find `<asfile>` in.
The default is the current program.
asfile `<asfile>`

## Returns

alpha `<name>`

## Where Used

`sys.get_asfile()` can be called from anywhere.

## Description

`sys.get_asfile()` returns the 4C asfile name for `<asfile>` It can be useful in PCLs that use an asfile as input parameters. Internally, 4C saves an asfile as an integer, so this is a way for an application to determine at runtime what 4C asfile name is associated with a PCL parameter.

## See Also

[`sys.get_filename()`]({{< ref "getfilename.md" >}})

Back to Top

## See Also

- [sys.get_filename()]({{< ref "getfilename.md" >}})


