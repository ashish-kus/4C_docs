---
title: "wpcled"
weight: 4
draft: false
---

## Purpose

wpcled is the MS Windows 4C PCL editor client program.

## Usage

```text
wpcled <option> [ <optarg> ] ...
```

## Options

- `-a <app>` — Specify app to run
- `-c <conn>` — Specify connection
- `-p <program>` — Specify first program to open.
- `-P <pcl>` — Specify first pcl to open.
- `-x <xmldir>` — Directory to find xml files in.
Default is HOME_4C/xml/wpcled.

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
wpcled -c "Machine=10.0.0.22,Port=1414" -a demo -p demo.test.1 -P init
```

## Description

Wpcled can be started manually passing any of the options deescribed above, or it can be started while running 4C and automatically connected. To start it automatically from the 4C development programs, select EditPCLs from the main development screen context menu, or select EditPCL or EditAll from the pcl maintenance program.

## See Also

Back to Top

## See Also

- [4C Client Programs]({{< ref "_index.md" >}})

