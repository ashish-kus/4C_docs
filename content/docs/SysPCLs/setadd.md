---
title: "sys.set_add()"
description: "sets or toggles Add mode"
weight: 268
draft: false
---

## Purpose

`sys.set_add()` sets or toggles "Add" mode.

## Usage

```text
sys.set_add();
```

## Arguments

None

## Returns

None

## Where Used

`sys.set_add()` should only be called during field processing of input screens. `sys.set_add()` is most often called from the `<add>` key PCL processing.

## Example

```text
In the development program sys.prog.mstr, sys.set_add() is
called if the <add> key is pressed on the sys.pr_name field.
```

## Description

`sys.set_add()` is called when you want the default rcd access mode to be "Add". When called, 4C first checks to see if the XLMODETOGGLE var is set to ON. If it is and sys.mode is already "Add", 4C sets it back to "Lookup". If it is anything else, then 4C sets sys.mode to "Add". Next, 4C checks to see if it is in a field processing state. If so, then the next field state is set to exit that field. This will only happen after all nested PCLs are exited normally. The next field to process will be sys.cur_field if no input was entered on that field. If input was entered, then the next field to process will be sys.cur_field + 1.

sys.mode can be reset to "Lookup" by pressing the `<cancel>` key, or if XLMODETOGGLE is "ON", by calling `sys.set_add()` again.

The main effect of calling `sys.set_add()` is that the system variable sys.mode in '$syslocalf' is set to "Add". This affects calls to [`sys.read_file()`]({{< ref "readfile.md" >}}) with the F_DEFAULT flag. Since sys.mode is in the local system file, this only affects the current program.

Currently, there are no other side effects of calling `sys.set_add()` but I would advise not to call it except during field processing.

## Bugs/Features/Comments

There is no corresponding `sys.set_look()` PCL.

## See Also

[`sys.set_del()`]({{< ref "setdel.md" >}}) [`sys.set_mod()`]({{< ref "setmod.md" >}}) [`sys.read_file()`]({{< ref "readfile.md" >}})

Back to Top

