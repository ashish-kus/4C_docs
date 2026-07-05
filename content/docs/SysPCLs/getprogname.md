---
title: "sys.get_progname()"
description: "returns the real program name for the aspro"
weight: 172
draft: false
---

## Purpose

`sys.get_progname()` returns the real program name for the asprog arg.

## Usage

```text
progname = sys.get_progname(<asprog>);
```

## Arguments

- `asprog <asprog>` — The asprog name of the 4C program that you want
the real program name of.

## Returns

- `NULLSTRING` — No such `<asprog>` currently active
- `<progname>` — The real program name of `<asprog>`

## Where Used

`sys.get_progname()` can be called from anywhere. However, it is normally only used in the 4C debugger programs.

## Example

```text
The following example is from the 4C debugger program sys.dbg.fld.
It is the aspefld PCL.
It is used in order to display the real program name along with
the asprog name on the screen.




if (sys.is_prog(asprog) == 0) {
    sys.err_msg("No Such Program:",asprog);
    sys.exit_field(sys.cur_field);
}
progname = sys.get_progname(asprog);
```

## Description

`sys.get_progname()` returns the real program name for the asprog arg. It is probably not real useful to normal programs, but debugger type programs will have a use for it. It was added so that the 4C debugger programs could call it when the asprog name was known in order to display the real program name.

## Bugs/Features/Comments

If more than one program is active with the same asprog name, only the most recently active one is used by [`sys.build_stlist()`]({{< ref "buildstlist.md" >}}).

## See Also

[`sys.is_prog()`]({{< ref "isprog.md" >}})

Back to Top

