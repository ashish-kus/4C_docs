---
title: "sys.get_keystate()"
description: "lets the application determin"
weight: 158
draft: false
---

## Purpose

`sys.get_keystate()` lets the application determine if any of Shift, Control, or Alt was pressed when the user clicked a button or listview column hdr.

## Usage

```text
if (sys.get_keystate(<key>))
 do_something();
```

## Arguments

- `Alpha` — `<key>` - Should be one of "Shift", "Control" or "Alt"

## Returns

- `0` — Specified key was not pressed
- `1` — Specified key was pressed

## Where Used

`sys.get_keystate()` can be called from anywhere.

## Example

```text
The global 4cSys PCL lv_sortby() checks if either Shift or Control
is pressed and if so will sort descending instead of ascending.
```

## Description

Long Description

Requirements

4csrvr version 5.0.6 and higher

4cclient version 5.0.6 and higher

## See Also

Sys PCLs List

Back to Top

## See Also

- [Sys PCLs List]({{< ref "_index.md" >}})

