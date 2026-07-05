# sys.rel_dfile()

## Purpose

`sys.rel_dfile()` releases memory used by a dynamic file.

## Usage

```text
ret = sys.rel_dfile(<fileno>);
```

## Arguments

- `integer <fileno>` — The fileno returned by a previous
call to sys.get_dfile().

## Returns

- `0` — OK
- `-1` — Error - Invalid dynamic `<fileno>`

## Where Used

`sys.rel_dfile()` can be called from anytime there is an active dynamic file in a 4C program. It works only on dynamic files for the current program.

## Example

```text
The global system PCL sys.rcd_exists() makes uses
sys.get_dfile().
```

## Description

Whenever you are done using a dynamic file, you should release all memory associated with the dynamic file by calling `sys.rel_dfile()`. Once `sys.rel_dfile()` has been called, the filenum associated with the dynamic file can no longer be used for any SysPCL calls that need an `<asfile>` argument.

## See Also

[`sys.get_dfile()`]({{< ref "getdfile.md" >}})

Back to Top

## See Also

- [sys.get_dfile()]({{< ref "getdfile.md" >}})


