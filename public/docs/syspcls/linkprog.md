# sys.link_prog()

## Purpose

`sys.link_prog()` starts or links to a currently running program.

## Usage

```text
sys.link_prog([<linkflags>],<progname>[,Arg1-Arg15]);
ret = sys.link_prog([<linkflags]>,<progname> [,arg1 [,..., [arg15] ] ... ]);
```

## Arguments

- `linkflags` — optional arg that can be either LP_DEFAULT or LP_FROMANCESTOR
- `progname` — alpha
arg1,arg2,...,arg15 0-15 optional alpha args that have meaning to
the called program.

## Returns

- `- OK` — program ran - and has exited or linked back
- `-1` — Err - Could not run program

## Where Used

`sys.link_prog()` usually is only used in screen programs.

## Example

```text
See the calls to sys.link_prog in the program development
bootstraps.
Especially note how LP_FROMANCESTOR is used in sys.df.fm.pnl
and sys.df.fm.def.
The LP_FROMANCESTOR in these two programs makes the sys.link_prog
act like the link was made fromn sys.df.maint1.
```

## Description

`sys.link_prog()` starts a program that is a sibling of the currently running program. The program started by sys.link_prog does not need to exit before returning to the program that called it. In screen programs, linking back to a program can be accomplished using the mouse or function keys. The application can also link back with another call to `sys.link_prog()`. The flag LP_FROMANCESTOR causes 4C to look search through the heirarchy of currently pushed programs for one that explicitly defines the program being called in it's Call/Share. If found, the new program is linked to this program rather than the currently running program. This is useful when nested programs may want to link to the same instance of a program rather than start a new instance. This flag is used in the bootstrap display field definitions sys.df.fm.pnl and sys.df.fm.def to link to the other development programs.

## See Also

[`sys.push_prog()`]({{< ref "pushprog.md" >}})

[`sys.exec_prog()`]({{< ref "execprog.md" >}})

Back to Top

## See Also

- [sys.push_prog()]({{< ref "pushprog.md" >}})
- [sys.exec_prog()]({{< ref "execprog.md" >}})


