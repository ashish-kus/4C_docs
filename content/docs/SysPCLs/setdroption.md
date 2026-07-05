---
title: "sys.set_droption()"
description: "allows for some runtime configurin"
weight: 287
draft: false
---

## Purpose

`sys.set_droption()` allows for some runtime configuring of a driver.

## Usage

```text
ret = sys.set_droption(options);
```

## Arguments

integer options;

Valid values for option are:

DR_DEFAULT DR_AUTOSEQ,DR_RENUMBER,DR_INTERLEAVE,DR_PROCREAD,DR_PASTEOK DR_NOAUTOSEQ,DR_NORENUMBER,DR_NOINTERLEAVE,DR_NOPROCREAD,DR_NOPASTEOK DR_DUPOK,DR_NODUPOK

Any of the options except DR_DEFAULT can be ored together using the "|" operator.

## Returns

- `0` — Normal
- `-1` — No current driver, or not in DrInit State.

## Where Used

`sys.set_droption()` can only be called during the DR_INIT state.

## Example

```text
sys.set_droption(DR_INTERLEAVE);
sys.set_droption(DR_AUTOSEQ);
sys.set_droption(DR_AUTOSEQ|DR_RENUMBER);
```

## Description

This PCL is meant to be called only from a Driver Init PCL. It can be used to enable auto sequencing of the driver file, to allow the renumbering cmd to be used in `sys.dr_epedit()`, and to allow interleaving of sorting and processing of records. It can also be used to disable any of these three options, however, this is not of much use yet. The options may be or'd together. The DR_INTERLEAVE option is incompatible with both DR_RENUMBER and with DR_AUTOSEQ. Using DR_DEFAULT sets the driver options to the default driver options specified in the driver definition screen.

When DR_INTERLEAVE is specified, 4C will sort and select only enough records to display one screenfull of data at a time. The timing is different when using this option. Some Driver Proc PCLs will be interleaved with the Driver Sort/Select PCLs. The Driver End Sort PCL may be executed after some Driver Proc PCL's. The advantage of using this option with some screens is so that the user does not need to wait a long time to build the temp file before seeing a screen full of data. The temp file will still be built. This option is meant for screen drivers.

When the program driver characteristics allow a flag to specify DR_INTERLEAVE, the DR_NOINTERLEAVE option can be used in the Driver Init PCL to disable interleave.

The DR_AUTOSEQ option directs 4C to automatically sequence the driver file. When used, you cannot use DR_INTERLEAVE. After building the temp file, if 4C detects any records out of sequence, the are sequenced immediately. If the program uses `sys.dr_epedit()`, then deleting records causes immediate resequencing. If records are deleted in any other manner than through `sys.dr_epedit()`, the records will not be resequenced. However, there is no problem with missing sequence numbers. The next time a driver that autosequences is run with that file, the records will be resequenced. Records can only be inserted using `sys.dr_epedit()`. Inserting records first causes all records following the place of insertion to be resequenced with as high a sequence as possible. So, the user does not need to specify how many records he wants to insert. When ending insert mode, 4C will resequence any records that need to be resequenced. No conversion is necessary on any files whose last primary key can be used as a sequence number. Also, not all drivers that use a sequenced file need to enable autosequencing. Any length sequence number can be used, except it MUST be an alpha storage type. 4C will left fill the sequence number with zero's when it calculates it. When adding, right now you need to set the sequence number yourself, but later 4C will do it automatically. To set, use the Start Fld PCL and a statement like:

seq = sys.fmt_integer(dr_sequence,"9999");

When the program driver characteristics allow a flag to specify DR_AUTOSEQ, the DR_NOAUTOSEQ option can be used in the Driver Init PCL to disable the autosequencing.

The DR_RENUMBER option is a flag that signals `sys.dr_epedit()` to allow the user to specify 'r' as a command. The renumber cmd allows the user to renumber all or part of the selected rcds and to specify the increment to use when renumbering. See the section on modifications for using the renumber command within `sys.dr_epedit()`. When this option is used, the DR_INTERLEAVE option cannot be used, or it will be ignored.

When the program driver characteristics allow a flag to specify DR_RENUMBER, the DR_NORENUMBER option can be used in the Driver Init PCL to disable renumbering.

## See Also

Back to Top

