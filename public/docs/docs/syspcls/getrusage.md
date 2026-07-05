# pclname()

## Purpose

`sys.get_rusage()` returns the resource usage of the current 4csrvr into the file variables of a sys.t_rusage asfile.

## Usage

```text
ret = sys.get_rusage(<truasfile>,<ruflags>);
```

## Arguments

- `<truasfile>` — The asfile for a sys.t_rusage() file.
- `<ruflags>` — Combinations of RU_CURRENT, RU_TOTAL, and RU_RESET

## Returns

- `-1` — Invalid `<truasfile>`
- `0` — OK - File variables of the `<truasfile>` have been populated appropriately

## Where Used

`sys.get_rusage()` can be called from anywhere. It will typically be called after running a section of code that you are monitoring for resource usage. This code is typically sandwiched between a calls to [`sys.init_rusage()`]({{< ref "initrusage.md" >}}) and `sys.get_rusage()`.

## Example

```text
The sys.profile.s bootstrap program has examples of both sys.init_rusage()
and sys.get_rusage().
```

## Description

`sys.get_rusage()` will populate the `<truasfile>` file variables with appropriate values depending on the flags passed in. If RU_TOTAL is specified the the resource usage returned is the total resources used by the current 4csrvr session since it started. Otherwise the values returned are the resources used since the last call to [`sys.init_rusage()`]({{< ref "initrusage.md" >}}). If the RU_RESET flag is specified, then after populating the `<truasfile>` the saved current resource usage is updated acting as if another call to [`sys.init_rusage()`]({{< ref "initrusage.md" >}}) was made. Passing in only RU_DEFAULT is the same as passing in RU_CURRENT.

Requirements

`sys.get_rusage()` requires 4CServer Version 6.2.2-05 or later

## Bugs/Features/Comments

Bugs

## See Also

`sys.get_rusage()`

Back to Top

## See Also

- [sys.get_rusage()]({{< ref "getrusage.md" >}})


