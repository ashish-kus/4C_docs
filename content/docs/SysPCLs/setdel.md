---
title: "sys.set_del()"
description: "sets or toggles Delete mode"
weight: 278
draft: false
---

## Purpose

`sys.set_del()` sets or toggles "Delete" mode.

## Usage

```text
sys.set_del();
```

## Arguments

None

## Returns

None

## Where Used

`sys.set_del()` should only be called during field processing of input screens. `sys.set_del()` is most often called from the `<delete>` key PCL processing.

## Example

```text
In the development program sys.prog.mstr, sys.set_del() is
called if the <delete> key is pressed on the sys.pr_name field.
```

## Description

`sys.set_del()` is called when you want the default rcd access mode to be "Delete". When called, 4C first checks to see if the XLMODETOGGLE var is set to ON. If it is and sys.mode is already "Delete", 4C sets it back to "Lookup". If it is anything else, then 4C sets sys.mode to "Delete". Next, 4C checks to see if it is in a field processing state. If so, then the next field state is set to exit that field. This will only happen after all nested PCLs are exited normally. The next field to process will be sys.cur_field if no input was entered on that field. If input was entered, then the next field to process will be sys.cur_field + 1.

sys.mode can be reset to "Lookup" by pressing the `<cancel>` key, or if XLMODETOGGLE is "ON", by calling `sys.set_del()` again.

The main effect of calling `sys.set_del()` is that the system variable sys.mode in '$syslocalf' is set to "Delete". This affects calls to [`sys.read_file()`]({{< ref "readfile.md" >}}) with the F_DEFAULT flag. Since sys.mode is in the local system file, this only affects the current program.

Currently, there are no other side effects of calling `sys.set_del()` but I would advise not to call it except during field processing.

## Bugs/Features/Comments

There is no corresponding `sys.set_look()` PCL.

## See Also

[`sys.set_add()`]({{< ref "setadd.md" >}}) [`sys.set_mod()`]({{< ref "setmod.md" >}}) [`sys.read_file()`]({{< ref "readfile.md" >}})

Back to Top

