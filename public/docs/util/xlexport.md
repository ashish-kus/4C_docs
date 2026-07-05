# xlexport

## Purpose

xlexport exports 4C program and file specifications to a single ISAM file.

## Usage

```text
xlexport <option> [ <optarg> ] ...
```

## Options

-c `<catg>`
-d `<spec directory>`
-f `<filename>` multiple ok, partial ok
-g `<glblpclname>` multiple ok, partial ok
-n `<export file name>`
-p `<progname>` multiple ok, partial ok
- `-F` — Export Files used by progs
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlexport -c system -p all -F -n /tmp/exp.1



     This exports all programs with category system and
all files used by those programs to the file /tmp/exp.1.
```

## Description

xlexport exports 4C program and file specifications to a single ISAM file. This file can then be used to import program or file specs to another system.

## Bugs/Features/Comments

You must be careful using this if you are using 4C Version Control.

## See Also

xlimport

Version Control Documentation

Back to Top

## See Also

- [xlimport]({{< ref "xlimport.md" >}})


