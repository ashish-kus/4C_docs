---
title: "sys.is_prog()"
description: "indicates if the <asprog> arg i"
weight: 200
draft: false
---

## Purpose

`sys.is_prog()` indicates if the `<asprog>` arg is a currently running 4C program.

## Usage

```text
ret = sys.is_prog(<asprog>);
```

## Arguments

- `asprog <asprog>` — The 4C asprog name of the program

## Returns

- `0` — `<asprog>` is not currently running.
- `1` — `<asprog>` is currently running

## Where Used

`sys.is_prog()` can be called from anywhere. It is used in the 4C debugger programs for verification. It could also be used to prevent multiple copies of a program from being run.

## Example

```text
The following example is from the 4C debugger program sys.dbg.fld.
It is the aspefld PCL.
It is used in order to verify that <asprog> exists before
trying to display the fields in <asprog>.




if (sys.is_prog(asprog) == 0) {
    sys.err_msg("No Such Program:",asprog);
    sys.exit_field(sys.cur_field);
}
progname = sys.get_progname(asprog);
```

## Description

`sys.is_prog()` indicates if the `<asprog>` arg is a currently running 4C program.

## Bugs/Features/Comments

There is no way to determine if more than one copy of `<asprog>` is running. However, this could be added.

## See Also

[`sys.get_progname()`]({{< ref "getprogname.md" >}})

Back to Top

