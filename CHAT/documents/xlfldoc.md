---
title: "xlfldoc"
weight: 12
draft: false
---

## Purpose

xlfldoc displays the 4C file definition for each file specified.

## Usage

```text
xlfldoc <option> [ <optarg> ] ...
```

## Options

-f `<filename>` Mandatory
-d `<spec directory>`
- `-H` — help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlfldoc -f sys.program
```

## Description

xlfldoc prints the 4C file definition for each specified file. To document more than one file use multiple -f options.

## See Also

Back to Top

