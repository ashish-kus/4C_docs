---
title: "sys.copy_data()"
description: "copys all non-primary key fields from the dat"
weight: 47
draft: false
---

## Purpose

`sys.copy_data()` copys all non-primary key fields from the data buffers of one file to the data buffers of another.

## Usage

```text
ret = sys.copy_data([ <fromprog>, ] <fromfile>, [ <toprog>, ] <tofile>);
```

## Arguments

- `alpha <fromprog>` — Optional asprog name of the program to find `<fromfile>` in.
The default is the current program.
- `file <fromfile>` — The asfile name of the file to copy from.
- `alpha <toprog>` — Optional asprog name of the program to find `<tofile>` in.
The default is the current program.
- `file <tofile>` — The asfile name of the file to copy to.

## Returns

- `0` — Always returns 0

## Where Used

`sys.copy_data()` can be called from anywhere.

## Example

```text
The bootstrap program sys.prog.cpy uses sys.copy_data when
copying the control break information.
The following is a copy of the PCL that copies the sys.cb_hdr data.




cbh2.sys.cbh_prname = newname;
cbh2.sys.cbh_name = cbh1.sys.cbh_name;
if (sys.read_file(cbh2,F_ADD|F_NOMSG) < 0) {
    beep();
    sys.msg("Warning: Program/CB: " + newname +
               cbh1.sys.cbh_name + " Already Exists");
    sys.read_file(cbh2,F_MODIFY);
}
sys.copy_data(cbh1,cbh2);
sys.upd_file(cbh2,F_DEFAULT);




NOTE: The pcl name is copycbh() and it is the DrSelect
PCL for the cbh1 driver.
```

## Description

`sys.copy_data()` copies all non-primary key fields from one files buffer area to anothers. This does not do any kind of file access or update. It is most useful when the same file is used more than once in the same program. It should not be used UNLESS the two files have the EXACT same file definition. If it is, fields that do not match in data type are not copied.

## See Also

[`sys.copy_file()`]({{< ref "copyfile.md" >}})

[`sys.copy_pkey()`]({{< ref "copypkey.md" >}})

[`sys.copy_fields()`]({{< ref "copyfields.md" >}})

[`sys.null_file()`]({{< ref "nullfile.md" >}})

[`sys.null_data()`]({{< ref "nulldata.md" >}})

Back to Top

## See Also

- [sys.copy_file()]({{< ref "copyfile.md" >}})
- [sys.copy_pkey()]({{< ref "copypkey.md" >}})
- [sys.copy_fields()]({{< ref "copyfields.md" >}})
- [sys.null_file()]({{< ref "nullfile.md" >}})
- [sys.null_data()]({{< ref "nulldata.md" >}})

