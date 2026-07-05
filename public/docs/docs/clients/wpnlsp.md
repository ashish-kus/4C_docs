# wpnlsp

## Purpose

wpnlsp is the MS Windows 4C panel screen painter client program.

## Usage

```text
wpnlsp <option> [ <optarg> ] ...
```

## Options

- `-a <app>` — Specify app to run
- `-c <conn>` — Specify connection
- `-p <program>` — Specify first program to run
- `-x <xmldir>` — Directory to find xml files in.
Default is HOME_4C/xml/wpnlsp.

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
wpnlsp -c "Machine=10.0.0.22,Port=1414" -a demo -p demo.test.1
```

## Description

Wpnlsp can be started manually passing any of the options deescribed above, or it can be started while running 4C and automatically connected. To start it automatically from the 4C development programs, select PanelSP from the main development screen context menu, or from the display fields context menu. Wpnlsp only works with panel programs.

## See Also

4C Panels

4C Panel Screen Painter

Back to Top

## See Also

- [4C Client Programs]({{< ref "_index.md" >}})
- [4C Panels]({{< ref "../Features/Panels/panels.md" >}})
- [4C Panel Screen Painter]({{< ref "../Features/Panels/panelsp.md" >}})


