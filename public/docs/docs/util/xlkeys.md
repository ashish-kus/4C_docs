# xlkeys

## Purpose

xlkeys lists the keys in a file.

## Usage

```text
xlkeys <option> [ <optarg> ] ...
```

## Options

-c `<count>`
-f `<filename>`
-d `<spec directory>`
-k `<keynumber>`
-n `<ext file name>`
-s `<starting key>`
- `-F` — MATCH FULL
- `-H` — Help
- `-P` — MATCH PARTIAL
- `-R` — REVERSE

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlkeys -f cust_mstr



xlkeys -f cust_mstr -k 2 -s I -R
```

## Description

xlkeys lists the keys in a file. A starting point can be set using the -s option. All parts of the key are separated by '|'. If secondary keys are listed, then the secondary key is listed first, followed by the primary key. There will be an indicator showing which is the primary key and which is the secondary key.

## See Also

xlflrpt

xlflgrep

Back to Top

## See Also

- [xlflrpt]({{< ref "xlflrpt.md" >}})
- [xlflgrep]({{< ref "xlflgrep.md" >}})


