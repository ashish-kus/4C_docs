# xlcopy

## Purpose

xlcopy copies rcds from 1 4C data file to another.

## Usage

```text
xlcopy <option> [ <optarg> ] ...
```

## Options

-c `<count>`
-d `<spec directory>` corresponds to closest -f
-f `<filename>` must be specified twice
-k `<keynumber>`
-n `<ext file name>` corresponds to closest -f
-r `<replacement key>`
-s `<starting key>`
-F `<match full>`
- `-H` — Help
- `-I` — Interactive
- `-N` — copy fields based on name
- `-P` — match partial
- `-R` — reverse
-V -verbose

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlcopy -f sys.program -f sys.program \
     -n /tmp/sp.xl -s sys




     This copies all rcds beginning with "sys" from the
sys.program file found in the XLDATA path to another
file called /tmp/sp.xl.
Both files have the same field layout defined by sys.program.



xlcopy -f sys.program -f sys.program -s sys -r tmp



     This cmd copies all rcds beginning with "sys"
in the sys.program file to the same file,
but replacing the "sys" with "tmp".
This may add new rcds to the sys.program file,
or it may modify existing "tmp" rcds.
```

## Description

xlcopy reads a file sequentially, and copies records to itself or to another file. If copying to itself, then you need to use the '-r' option to replace part of the key and write a new rcd. It is assumed that the field layouts of the two files are compatible. If the field layouts are not compatible, then using the -N option will cause xlcopy to copy on a field name basis. This can be used if you are changing the layout of a file and need to convert it. If you use '-N', only fields in file 2 that match fields in file1 get set. When using the same file definition for both files, but different external files, at least one "-n" option must be specified.

## See Also

Back to Top


