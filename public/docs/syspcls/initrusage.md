# sys.init_rusage()

## Purpose

`sys.init_rusage()` saves the current resource usage so that a later call to `sys.get_rusage()` can return the resource usage since the last call to `sys.init_rusage()`

## Usage

```text
ret = sys.init_rusage();
```

## Arguments

None

## Returns

- `0` — Always returns 0

## Where Used

`sys.init_rusage()` can be called from anywhere but is typically called right before code that you are monitoring for resource usage.

## Example

```text
The sys.profile.s bootstrap program has examples of both sys.init_rusage()
and sys.get_rusage().
```

## Description

`sys.init_rusage()` saves the current resource usage so that a later call to `sys.get_rusage()` can return the resource usage since the last call to `sys.init_rusage()`

Requirements

`sys.init_rusage()` requires 4CServer Version 6.2.2-05 or later

## Bugs/Features/Comments

Bugs

## See Also

`sys.get_rusage()`

Back to Top

## See Also

- [sys.get_rusage()]({{< ref "getrusage.md" >}})


