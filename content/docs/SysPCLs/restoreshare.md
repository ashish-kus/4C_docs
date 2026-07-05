---
title: "sys.restore_share()"
description: "resets all or a subset of shared in fields t"
weight: 257
draft: false
---

## Purpose

`sys.restore_share()` resets all or a subset of shared in fields to their original shared in values

## Usage

```text
ret = sys.restore_share([<filename>]);
```

## Arguments

- `asfile <filename>` — Optional arg that limits the restore to fields in `<filename>`

## Returns

integer `<ret>`
- `0` — OK - all applicable field values reset to original shared in value
- `-1` — `<filename>` was specified but not found

## Where Used

`sys.restore_share()` can be called from anywhere. However, it mostly makes sense to call it when a program is restarted to restore the original values of the shared in fields.

## Example

```text
sys.pr.srch.1 calls sys.restore_share(sys.program) in the restart() PCL
in order to restore the original values of fields in sys.program.
```

## Description

`sys.restore_share()` resets all or a subset of shared in fields to their original shared in values

Requirements

4csrvr version 5.2 or later.

## See Also

[`sys.fl_restore()`]({{< ref "flrestore.md" >}})

[`sys.fl_save()`]({{< ref "flsave.md" >}})

[`sys.get_saveval()`]({{< ref "getsaveval.md" >}})

Back to Top

## See Also

- [sys.fl_restore()]({{< ref "flrestore.md" >}})
- [sys.fl_save()]({{< ref "flsave.md" >}})
- [sys.get_saveval()]({{< ref "getsaveval.md" >}})

