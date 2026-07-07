---
title: "sys.get_username()"
description: "returns the user name of the use"
weight: 191
draft: false
---

## Purpose

`sys.get_username()` returns the user name of the user identified by `<useridx>`.

## Usage

```text
username = sys.get_username(<useridx>);
```

## Arguments

- `integer <useridx>` — The index into the 4C user info table.
This must be >= 0 and < sys.get_maxusers().

## Returns

- `alpha <username>` — The username associted with `<useridx>`
- `""` — No user associated with `<useridx>`

## Where Used

`sys.get_username()` can be called from anywhere. It is used by some of the system configuration and display programs.

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

`sys.get_username()` returns the user name of the user identified by `<useridx>`. The user info table is an internal table maintained by 4C. Some entries may be blank due to users logging on and off. The main purpose of this routine is to aid in system programs that display configuration and usage information.

## See Also

[`sys.get_idx()`]({{< ref "getidx.md" >}}) [`sys.get_maxusers()`]({{< ref "getmaxusers.md" >}}) [`sys.get_nusers()`]({{< ref "getnusers.md" >}}) [`sys.get_ttyname()`]({{< ref "getttyname.md" >}})

Back to Top

