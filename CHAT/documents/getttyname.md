---
title: "sys.get_ttyname()"
description: "returns the terminal nam"
weight: 190
draft: false
---

## Purpose

`sys.get_ttyname()` returns the terminal name of the user identified by `<useridx>`.

## Usage

```text
ttyname = sys.get_ttyname(<useridx>);
```

## Arguments

- `integer <useridx>` — The index into the user table

## Returns

- `alpha <ttyname>` — The terminal for the user with idx `<useridx>`
- `""` — No user associated with `<useridx>`

## Where Used

`sys.get_ttyname()` can be called from anywhere. It is used by some of the system configuration/display programs.

## Example

```text
The following code is the Init PCL for sys.ui.display.




maxusers = sys.get_maxusers();
nusers = sys.get_nusers();
sys.create_tfile(sys.usr_info);
for (i = 0; i < maxusers; i += 1) {
    if ((sys.ui_usrname = sys.get_username(i)) == "")
        continue;
    sys.ui_idx = i;
    sys.read_file(sys.usr_info,F_ADD|F_NODEBLOCK);
    sys.ui_ttyname = sys.get_ttyname(i);
    totusrsize += sys.ui_maxumem = sys.get_maxumem(i);
    sys.upd_file(sys.usr_info,F_DEFAULT);
}
sys.ui_usrname = ""; /* clear for drinit */
```

## Description

`sys.get_ttyname()` returns the terminal name of the user with idx `<useridx>`. This comes from an internal table in shared memory maintained by 4C.

## Bugs/Features/Comments

Be careful not to confuse this PCL with [`sys.get_tty()`]({{< ref "gettty.md" >}}) which takes a `<username>` arg instead of a `<useridx>` arg.

## See Also

[`sys.get_idx()`]({{< ref "getidx.md" >}}) [`sys.get_maxusers()`]({{< ref "getmaxusers.md" >}}) [`sys.get_nusers()`]({{< ref "getnusers.md" >}}) [`sys.get_username()`]({{< ref "getusername.md" >}}) [`sys.get_tty()`]({{< ref "gettty.md" >}})

Back to Top

