---
title: "xlcr"
weight: 8
draft: false
---

## Purpose

xlcr creates a 4C file.

## Usage

```text
xlcr <option> [ <optarg> ] ...
```

## Options

-f `<filename>` Mandatory
-d `<spec directory>`
-n `<ext file name>`
- `-F` — Force create - remove file if it exists
- `-I` — Interactive - prompt for each file to create
- `-N` — Only create if new - do not remove old file

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlcr -f cust_mstr



xlcr -f cust_mstr -f call_hdr
```

## Description

xlcr creates 4C date files. The files created can be of any type that 4C supports. More than one file can be created at a time. If xlcr gets an error creating any files, it will still try to create the other files specified, but it will exit with a non zero code.

## See Also

Back to Top

