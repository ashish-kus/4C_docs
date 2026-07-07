---
title: "sys.get_grpname()"
description: "returns the name of the group identifie"
weight: 151
draft: false
---

## Purpose

`sys.get_grpname()` returns the name of the group identified by `<grpidx>`.

## Usage

```text
grpname = sys.get_grpname(<grpidx>);
```

## Arguments

- `integer <grpidx>` — The index of the group that you want the group name of.
`<grpidx>` must be greater than or equal to 0, and less than sys.num_groups.

## Returns

- `""` — No foreground groups.
- `GroupName` — the name of the group with index grpidx.

## Where Used

`sys.get_grpname()` can be called from anywhere.

This PCL is meant for INTERNAL USE ONLY.

## Example

```text
The following example is the Init PCL of the system program
sys.grp.search.




sys.create_tfile(sys.t_group);
for (i = 0; i < sys.num_groups; i += 1) {
    sys.tg_name = sys.get_grpname(i);
    sys.read_file(sys.t_group,F_ADD);
    sys.upd_file(sys.t_group,F_DEFAULT);
}
```

## Description

`sys.get_grpname()` returns the name of the group identified by `<grpidx>`. A 4C group is an independant set of programs within the same 4C session. `sys.get_grpname()` only works with the foreground set of groups. In addition to the foreground set of groups, there is a system set, and a background set. The background set is not implemented yet.

## Bugs/Features/Comments

`sys.get_grpname()` only works on the foreground set of groups.

`sys.get_grpname()` will return a group name even if `<grpidx>` is out of range.

## See Also

[`sys.link_group()`]({{< ref "linkgroup.md" >}})

Back to Top

