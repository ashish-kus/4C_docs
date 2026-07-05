---
title: "sys.get_fklabel()"
description: "returns the label associated wit"
weight: 145
draft: false
---

## Purpose

`sys.get_fklabel()` returns the label associated with a function key.

## Usage

```text
fklabel = sys.get_fklabel(<fkeyname>);
```

## Arguments

- `alpha <fkeyname>` — The 4C name for the function key.
(i.e. "add", "search", "user1", "user2", etc.)

## Returns

alpha `<fklabel>`
The label associated with `<fkeyname>`
- `"NULL"` — No such FKEY

## Where Used

`sys.get_fklabel()` can be called from anywhere. It typically would be called from a menu program that allows selection by function keys. This will normally be done in the Init PCL. The labels can then be displayed without being hardcoded.

## Example

```text
The system program search menu, sys.pr.search.s calls
sys.get_fkeylabel() for each of the fkeylabels displayed.
Here is the code from the Init PCL of sys.pr.search.s:




fkeylabel[0] = sys.get_fklabel("system1");
fkeylabel[1] = sys.get_fklabel("system2");
fkeylabel[2] = sys.get_fklabel("system3");
fkeylabel[3] = sys.get_fklabel("system4");
fkeylabel[4] = sys.get_fklabel("system5");
fkeylabel[5] = sys.get_fklabel("system6");
fkeylabel[6] = sys.get_fklabel("system7");
fkeylabel[7] = sys.get_fklabel("system8");
```

## Description

`sys.get_fklabel()` will return the label associated with a 4C function key. All 4C function keys are defined in the file sys.spc_char. Function key labels can be defined in termcap, or 4C will determine an appropriate label. If there is no real mapping between a terminal function key and the 4C funtion key, then the label will be the alternate. So, some function key labels may look like - "\Eug"

## See Also

Back to Top

