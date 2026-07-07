---
title: "xlupd"
weight: 19
draft: false
---

## Purpose

xlupd reads a var sequential file with field separators and writes rcds to a 4C data file.

## Usage

```text
xlupd <option> [ <optarg> ] ...
```

## Options

-f `<SeqFileName>` -f `<4CFileName>`, Both Mandatory
-c `<count>`
-d `<spec directory>`
-n `<ext file name>`
-t `<field term>` default = "|"
-v `<variable>` ...
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
If text file tfile has the following 2 lines




ABC|system|test program
XYZ|tmp|temporary program




Then the cmd:




xlupd -f tfile -f sys.program -v sys.pr_catg -v sys.pr_desc




Will either add or modify the ABC and the DEF rcd in the sys.program
file.
```

## Description

xlupd will read a sequential file and either add or modify rcds in a 4C data file. If no -v variables are specified, then xlupd assumes the sequential file has one field for each data field in the 4C data file. If any -v variables are specified, then xlupd assumes that the sequential file has fields corresponding to the primary key of the 4C data file and the -v vars. You do not need to specify -v for any of the primary key fields. xlupd will either add or modify the corresponding rcd in the 4C data file. If the record already exists, fields without a corresponding field in the sequential file are not modified.

xlupd can be used in conjunction with xlconv and your favorite text editor to quickly make complicated changes to your test data.

## See Also

xlflgrep

xlscopy

xlset

Back to Top

## See Also

- [xlflgrep]({{< ref "xlflgrep.md" >}})
- [xlscopy]({{< ref "xlscopy.md" >}})
- [xlset]({{< ref "xlset.md" >}})

