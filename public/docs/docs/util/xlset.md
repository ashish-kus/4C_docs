# xlset

## Purpose

xlset sets the values of fields in a 4C data file.

## Usage

```text
xlset <option> [ <optarg> ] ...
```

## Options

-c `<count>`
-d `<spec directory>`
-f `<filename>` Mandatory
-k `<keynum>`
-n `<ext file name>`
- `-r <repstring>` — 1 per -v
-s `<seekto>`
- `-v <variable> ...` — at least 1 is mandatory
- `-F` — MATCH FULL
- `-H` — Help
- `-I` — Interactive
- `-N` — No Message
- `-P` — MATCH PARTIAL
- `-R` — Reverse

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlset -f sc_prog \
-s "00053" \
-v scp_editdate -r "09/01/1994" \
-v scp_instdate -r  "10/01/1994"




Sets scp_editdate to 9/1/1994 and scp_instdate to 10/1/1994
for all sc_prog records that start with 00053,
that is with scp_schnum==00053.
```

## Description

xlset reads a 4C data file sequentially and sets fields in the rcds based on -v and -r options. Each -v option specifies a field to set a value for, and the corresponding -r option specifies the value to set it to. This is a quick way to reset test data when debugging.

## Bugs/Features/Comments

It is impossible to set a date field to null.

## See Also

xlflgrep

xlupd

Back to Top

## See Also

- [xlflgrep]({{< ref "xlflgrep.md" >}})
- [xlupd]({{< ref "xlupd.md" >}})


