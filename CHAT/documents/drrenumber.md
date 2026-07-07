---
title: "sys.dr_renumber()"
description: "allows the user to renumber sequenced lines i"
weight: 70
draft: false
---

## Purpose

`sys.dr_renumber()` allows the user to renumber sequenced lines in a scrolling program.

## Usage

```text
sys.dr_renumber();
```

## Arguments

None

## Returns

- `0` — OK
- `-1` — Invalid state to allow renumbering.

## Where Used

`sys.dr_renumber()` should only be called by an application that catches `<xlrenumber>` and has determined that renumbering can proceed. Most applications will have no need for this and can just specify that renumbering is allowed in the program file definition.

## Example

```text
The bootstrap program sys.df.fm.pnl catches <xlrenumber> and prevents
renumbering if screen panels are locked or the program is readonly.
Otherwise, it allows renumbering by calling sys.dr_renumber().
```

## Description

A scrolling program that needs to sometimes allow renumbering and sometimes prevent it at runtime can do so by catching `<xlrenumber>` and in the processing of `<xlrenumber>` call `sys.dr_renumber()` if it wants renumbering to proceeed. To prevent renumbering, it just avoids calling `sys.dr_number()`.

Requirements

`sys.dr_renumber()` requires 4CSrvr version 4.6.1 or higher.

## Bugs/Features/Comments

This is a fairly specialized SysPCL. Be sure your application needs it before using it.

## See Also

[`sys.set_droption()`]({{< ref "setdroption.md" >}})

[`sys.dr_delete()`]({{< ref "drdelete.md" >}})

Back to Top

## See Also

- [sys.set_droption()]({{< ref "setdroption.md" >}})
- [sys.dr_delete()]({{< ref "drdelete.md" >}})

