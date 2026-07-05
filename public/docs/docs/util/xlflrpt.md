# xlflrpt

## Purpose

xlflrpt prints 4C Data Fields

## Usage

```text
xlflrpt <option> [ <optarg> ] ...
```

## Options

-c `<count>`
-d `<spec directory>`
-f `<filename>`
-k `<keynumber>`
-n `<ext file name>`
-s `<starting key>`
-t `<field term>` default = newline
-v `<variable>` ...
- `-w <wid> ...` — one per -v
- `-A` — Align
- `-F` — MATCH FULL
- `-H` — Help
- `-K` — list the key fields first (ALL PRIMARY)
- `-N` — NO LABELS, No VERBOSE INFO
- `-P` — MATCH PARTIAL
- `-R` — REVERSE
- `-U` — Print alpha fields UNFORMATTED
- `-V <verify>` — check for ctl chars in alphas

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlflrpt -f sys.program



     This prints a verbose listing of every rcd in the sys.program file,
one field per line with a label.




xlflrpt -f sc_prog -t " " -N -v scp_instdate \
     -v scp_instrel -v scp_instlevel




     This prints the scp_instdate, scp_instrel, and scp_instlevel fields
from the sc_prog file.
The fields are printed on the same line separated by spaces with no labels.
The primary key of the sc_prog is not printed, but could be by specifying
the -K option also.
```

## Description

xlflrpt reads a 4C data file sequentially and prints all fields or selected fields. The default way of printing is one field per line, preceded by a label. This can be overridden by printing only some fields by using the -v options combined with -w options and by suppressing label printing and changing the field separator character.

The -V option is used to verify that alpha fields contain only printing characters.

The -A option pads fields out to there max width so that you can produce a columnar listing and not need to specify -w for each field printed.

## Bugs/Features/Comments

You cannot print column labels.

## See Also

xlkeys

xlflgrep

Back to Top

## See Also

- [xlkeys]({{< ref "xlkeys.md" >}})
- [xlflgrep]({{< ref "xlflgrep.md" >}})


