---
title: "sys.dr_position()"
description: "allows you to set the first highlighted rcd of"
weight: 67
draft: false
---

## Purpose

`sys.dr_position()` allows you to set the first highlighted rcd of a scrolling screen.

## Usage

```text
ret = sys.dr_position(<field>,<posflag>);
```

## Arguments

- `FieldAny <field>` — The field to use in determining initial highlighted rcd.
- `integer <posflag>` — One of POS_LT, POS_LEQ, POS_EQ, POS_GEQ, POS_GT.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — No program driver

## Where Used

`sys.dr_position()` can only be called from the DrInit PCL of the Program Driver.

## Example

```text
The DrInit PCL from sys.dev.sel uses sys.dr_position()
to highlight the last selected device.
The code from that PCL follows:




sys.dev_name = sys.sel_device;
sys.dr_position(sys.dev_name,POS_LEQ);
sys.dev_name = "";
sys.dr_init(sys.device,S_DEVNAME,MATCH_PARTIAL);




Notice that sys.dev_name must be intialized with a value before
calling sys.dr_position().
Unfortunately, sometimes it needs to be reset afterward.
```

## Description

`sys.dr_position()` is used to indicate to 4C how to position the first page displayed on a scrolling screen and which record to highlight. `sys.dr_position()` can be called with any field that will have a value in it when `sys.dr_add()` is called, either explicitly or implicitly. Most often it will be called with fields that are part of the driver sort sequence. You can make multiple calls, to force multiple compares. The order of the calls to `sys.dr_position()` will be highest precedence to lowest precedence. That is, calls should be in the order of the key, left to right.

## See Also

Back to Top

