---
title: "sys.push_kprog()"
description: "is Obsolete"
weight: 243
draft: false
---

## Purpose

`sys.push_kprog()` is Obsolete. It pushes a 4C program, without having to reallocate and reinitialize all the usr memory of the program.

## Usage

```text
sys.push_kprog(<progname>[,Arg1-Arg15]);
ret = sys.push_kprog(<progname> [,arg1 [,..., [arg15] ] ... ]);
```

## Arguments

- `progname` — alpha
arg1,arg2,...,arg15 0-15 optional alpha args that have meaning to
the called program.

## Returns

- `- OK` — program ran - exit code now in $wexit_code
- `-1` — Err - Could not run program

## Where Used

`sys.push_kprog()` can be called from anywhere.

## Example

```text
sys.push_kprog("program");
```

## Description

`sys.push_kprog()` is the same as [`sys.push_prog()`]({{< ref "pushprog.md" >}}), except that when this program exits, all user memory is preserved. The intention is that when pushing the same program many times from the same program it should be faster to keep the user memory intact. This should not be used for every pushed program, only those that may be called many times. For example, a driver that pushes the same program for every record selected would benefit a lot from using `sys.push_kprog()` as opposed to [`sys.push_prog()`]({{< ref "pushprog.md" >}}), especially when the number of records is large.

Note: the 'k' in kprog stands for 'keep'.

## Bugs/Features/Comments

If you have trouble when using this, use [`sys.push_prog()`]({{< ref "pushprog.md" >}}). There could still be some memory leaks in `sys.push_kprog()`.

This is Obsolete, don't use it anymore.

## See Also

[`sys.push_prog()`]({{< ref "pushprog.md" >}}) [`sys.link_prog()`]({{< ref "linkprog.md" >}}) [`sys.exec_prog()`]({{< ref "execprog.md" >}})

Back to Top

