---
title: "sys.set_pnltitle()"
description: "modifies the title of a panel i"
weight: 303
draft: false
---

## Purpose

`sys.set_pnltitle()` modifies the title of a panel in a panel program.

## Usage

```text
ret = sys.set_pnltitle(<pnlcdef>,<title>);
```

## Arguments

- `integer <pnlcdef>` — The CDEF for the Panel.
- `alpha <title>` — Text of the new title.

## Returns

- `0` — OK
- `-1` — Not a panel program or panel does not exist.

## Where Used

`sys.set_pnltitle()` can be called from anywhere inside of a panel program except in the InitPCL.

## Description

`sys.set_pnltitle()` changes the title for a single panel in a panel program.

## Bugs/Features/Comments

The panel must have been originally defined to have a title.

## See Also

Back to Top

