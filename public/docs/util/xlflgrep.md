# xlflgrep

## Purpose

xlflgrep matches a string or a regular expression in a 4C data file.

## Usage

```text
xlflgrep <option> [ <optarg> ] ...
```

## Options

-c `<count>`
-d `<spec directory>`
-f `<filename>` Mandatory
-k `<keynum>`
-m `<match string>`
-n `<ext file name>`
- `-p <variable> ...` — print var
-r <repstring
-s `<startkey>`
-t `<field term>` for -p option default =
-v `<variable>` ...
-w `<width>`
-x `<match regexp>`
- `-F` — MATCH FULL
- `-G` — Global
- `-H` — Help
- `-I` — Interactive
-N
- `-P` — MATCH PARTIAL
- `-R` — Reverse
- `-S` — Silent
-K print primary Keys first followed by -p vars
- `-U` — use non formatted field val for alphas

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlflgrep -f sys.program -m std_rpt



xlflgrep -f sc_prog -v scp_instdate -m "10/01/94"
```

## Description

xlflgrep reads a file sequentially and looks for field values that match any of the -m or the -x options. By default, xlflgrep looks for matches in all fields. You can override this default by specifying 1 or more -v options. Also, by default, xlflgrep will format a field before looking for a match. This default can be overriden by the -U option, but it only affects alpha vars. Numerics and dates are always formatted first.

xlflgrep normally prints out the key of the rcd it found the match in and then the match it found. If -G is used, then all matches are printed. The -p option tells xlflgrep to only print the fields specified with -p when a match is found. Each -p option can be followed by a -w option telling xlflgrep how wide to print the field.

-N can be used to suppress printing of num matches.

xlflgrep can also be used to replace patterns that it finds. 1 -r option can be specified for each -m or -x.

## Bugs/Features/Comments

-x does not work under MS-DOS

Patterns cannot be anded to together.

## See Also

xlflrpt xlkeys xlset xlupd

Back to Top


