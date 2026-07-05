# xldel

## Purpose

xldel deletes rcds from a 4C data file.

## Usage

```text
xldel <option> [ <optarg> ] ...
```

## Options

-c `<count>`
-d `<spec directory>`
-f `<filename>`
-k `<keynumber>`
-n `<ext file name>`
-s `<starting key>`
-F `<match full>`
- `-I` — Interactive
- `-H` — Help
-P `<match partial>`
-R `<reverse>`

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xldel -f sys.program -k 2 -s "tmp"



     This will read the sys.program file by the secondary key, sys.pr_catg.
All rcds with a category beginning with "tmp" are read and deleted.



xldel -f sys.program -k 2 -s "tmp" -F



     This will read the sys.program file by the secondary key, sys.pr_catg.
All rcds with a category "tmp" are read and deleted.
Rcds with a category "tmpx" are not read and are not deleted.
This is because the -F flag was specified.
```

## Description

xldel deletes rcds from a file. At least one -s option must be specified. This prevents you from deleting all rcds inadvertently.

## See Also

Back to Top


