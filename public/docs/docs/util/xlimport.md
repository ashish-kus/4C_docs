# xlimport

## Purpose

xlimport imports 4C program and file specifications from an export file created by xlexport.

## Usage

```text
xlimport <option> [ <optarg> ] ...
```

## Options

-c `<catg>`
-d `<spec directory>`
-f `<filename>` multiple ok, partial ok
-g `<glblpclname>` multiple ok, partial ok
-n `<export file name>`
-p `<progname>` multiple ok, partial ok
- `-F` — Import Files used by progs
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlimport -c system -p all -F -n /tmp/exp.1



     This exports all programs with category system and
all files used by those programs from the file /tmp/exp.1.
```

## Description

xlimport imports 4C program and file specifications from a single ISAM file created by xlexport. This is one way of moving program and file specs between directories or systems.

## Bugs/Features/Comments

You must be careful using this if you are using 4C Version Control.

## See Also

xlexport

Version Control Documentation

Back to Top

## See Also

- [xlexport]({{< ref "xlexport.md" >}})


