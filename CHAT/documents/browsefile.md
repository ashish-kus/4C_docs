---
title: "sys.browse_file()"
description: "allows you to browse through rcds sequentially"
weight: 10
draft: false
---

## Purpose

`sys.browse_file()` allows you to browse through rcds sequentially.

## Usage

```text
sys.browse_file(<asfile>, <fldcdef>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file to browse.
- `integer <fldcdef>` — The CDEFINE of the field to browse by.
This field MUST be part of a key, primary or secondary.

## Returns

None

## Where Used

`sys.browse_file()` is normally called from the `<keyup>` or `<keydown>` PCL for an input display field.

## Example

```text
In the system development program, browsing on the
sys.pr_name field is enabled by defining
a PCL for <keyup> and for <keydown>.
The PCL defined is:




sys.browse_file(sys.program,S_PRNAME);
```

## Description

When called, `sys.browse_file()` initiates sequential reading of the specified file at the rcd closest to the current value of the key being used. The user interacts with `sys.browse_file()` by pressing the `<keyup>` or `<keydown>` keys to browse next or previous rcd, or by pressing the `<return>` key to accept current selection.

All keyfields that come before the field specified by `<fldcdef>` will be left unchanged. The keyfields beginning with `<fldcdef>` may be changed by `sys.browse_file()`, as well as any other fields that are not part of the key being used to read the file.

## Bugs/Features/Comments

Cancelling out of browse does not restore fields to their original values.

No secondary files can be read.

There should be a more automatic way of enabling browsing.

## See Also

Back to Top

