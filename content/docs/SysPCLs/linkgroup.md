---
title: "sys.link_group()"
description: "starts a new 4C group or links t"
weight: 206
draft: false
---

## Purpose

`sys.link_group()` starts a new 4C group or links to an existing one.

## Usage

```text
ret = sys.link_group(<flags>,<gpname>,<progname>);
```

## Arguments

- `int flags` — Currently unused
- `alpha <grpname>` — Any alpha value is a valid group name.
- `alpha <progname>` — The real program name of the program to start
if `<grpname>` does not exist yet.

## Returns

integer `<ret>`
- `0` — OK - link succeeded
- `-1` — Could not run program `<progname>`

## Where Used

`sys.link_group()` can be called from anywhere. It will eventually be integrated into 4C better than it is now.

## Example

```text
The following example is from the program sys.grp.start.
It is the EndFldLoop PCL.




sys.link_group(0,grpname,progname);
sys.exit_prog(0);
```

## Description

`sys.link_group()` starts a new 4C group or links to an existing one. A 4C group is a set of programs, pushed and linked, working together as a group. 4C allows you to run multiple independant groups. Each group maintains its own context and the user can switch between groups with function keys. The programmer can also switch between groups using `sys.link_group()`. The group name can be any alpha value. The group name uniquely identifies a group.

## Bugs/Features/Comments

This group stuff is only experimental right now and it will be better defined in the future.

## See Also

Back to Top

