---
title: "sys.mk_temp()"
description: "returns a fullpath name that can be used to create a temporary file"
weight: 225
draft: false
---

## Purpose

`sys.mk_temp()` returns a fullpath name that can be used to create a temporary file.

## Usage

```text
fullpath = sys.mktemp(<fnstart> [, <dirname> ]);
```

## Arguments

- `alpha <fnstart>` — The starting chars to use for the basename.
- `alpha <dirname>` — Optional directory to use instead of ${FC_TEMP}

## Returns

- `alpha <fullpath>` — The fullpath name that can be used as a temporary file.

## Where Used

`sys.mk_temp()` can be called from anywhere.

## Example

```text
The 4cSys global PCL, sys.app_trace(), uses sys.mk_temp() to find a name to be used in
creating a uniq trace file.
It passes in "trc" as the <fnstart> argument so the return will be the fullpath name to the
FC_TEMP dir followed by "/tr-<pid>.<ext>" where <pid> is an 8 digit process id of the calling
4csrvr and <ext> is a uniq extension.
```

## Description

Use `sys.mk_temp()` when you may need to create a uniq temporary file. `sys.mk_temp()` does not create the file, it just returns a fullpath that at the time of call did not exist in the filesystem and the caller should be able to create a file with that name. `sys.mk_temp()` always uses the FC_TEMP directory for the beginning of the fullpath name returned.

Requirements

4csrvr version 6.4.4 and later

The optional directory name is available on 4csrvr version 6.4.8 and later

## Bugs/Features/Comments

Bugs

## See Also

See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})

