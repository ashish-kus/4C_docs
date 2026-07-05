# sys.clr_break()

## Purpose

`sys.clr_break()` clears a 4c session breakpoint.

## Usage

```text
ret = sys.clr_break(<prname>,<brktype>,<name>,<asfilename>,<fromval>,<toval>,<flags>);
```

## Arguments

Note: all arguments to sys.clr_break() should match the exact arguments used in the
sys.set_break() call that you are clearing.
- `alpha <prname>` — program name or "ALL"
- `integer <brktype>` — One of BRK_PROGRAM, BRK_PCL, BRK_VARIABLE, or BRK_SYSPCL
- `alpha <name>` — A name specific to the type of breakpoint being cleared.
It will be one of pclname, varname, or syspcl name.
For BRK_PROGRAM, the `<name>` argument is ignored.
- `alpha <asfilename>` — The asfile name for the variable used in a BRK_VARIABLE breakpoint.
For all other breakpoint types the `<asfilename>` argument is ignored.
- `alpha <fromval>` — The alpha represenation of the from value for a BRK_VARIABLE breakpoint when
when the `<flags>` argument includes BRK_FRVAL.
For any other breakpoint type or a BRK_VARIABLE breakpoint with `<flags>` that include BRK_FRANY
the `<fromval>` argument is ignored.
- `alpha <toval>` — The alpha represenation of the to value for a BRK_VARIABLE breakpoint when
the  `<flags>` argument includes BRK_TOVAL.
For any other breakpoint type or a BRK_VARIABLE breakpoint with `<flags>` that include BRK_TOANY
the `<toval>` argument is ignored.
- `integer <flags>` — Combinations of BRK_ENTRY, BRK_EXIT, BRK_FRANY, BRK_FRVAL, BRK_TOANY,
BRK_TOVAL, BRK_LINENO.
When clearing a BRK_PCL on a specific linenumber of a PCL the flags argument should be set to
(BRK_LINENO | lineno).

## Returns

- `0` — OK.
Currently, this is the only value returned.

## Where Used

`sys.clr_break()` is normally used by the 4c system debugger when developers are debugging during an interactive session. However, it is possible for an application to set and clear breakpoints without any user interaction.

## Description

To clear a breakpoint, call `sys.clr_break()` passing the same arguments that were passed in to [`sys.set_break()`]({{< ref "setbreak.md" >}}).

## See Also

[`sys.set_break()`]({{< ref "setbreak.md" >}})

Back to Top

## See Also

- [sys.set_break()]({{< ref "setbreak.md" >}})


