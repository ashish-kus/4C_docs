# sys.prog_isopen()

## Purpose

`sys.prog_isopen()` returns 1 if the current program is open.

## Usage

```text
ret = sys.prog_isopen();
```

## Arguments

arg1

## Returns

- `0` — Program is not open
- `1` — Program is open

## Where Used

`sys.prog_isopen()` can be called from anywhere.

## Description

`sys.prog_isopen()` is an easy way to determine if a screen program has a client window currently display or if a report program has a device open. This can be useful because some system PCLs only work when a program is open. i.e. [`sys.dflist_clear()`]({{< ref "dflistclear.md" >}}), [`sys.dflist_add()`]({{< ref "dflistadd.md" >}}), and others.

Requirements

4csrvr version 6.4.3 or later

## Bugs/Features/Comments

Bugs

## See Also

See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})


