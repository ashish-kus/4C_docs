# sys.build_stlist()

## Purpose

INTERNAL USE ONLY

`sys.build_stlist()` builds a list of the internal 4C state stack.

## Usage

```text
sys.build_stlist(<t_stlist>, <asprog>);
```

## Arguments

- `file <t_stlist>` — the asfile name of a file using the sys.t_stlist
definition.
- `asprog <asprog>` — The name the program was called by when it was
started.

## Returns

- `0` — OK file built
- `-1` — The asfile passed was not sys.t_stlist or `<asprog>` is not
currently active.

## Where Used

`sys.build_stlist()` can be called from anywhere. It is meant to be USED INTERNALLY ONLY and currently is used by the 4C debugger programs.

## Example

```text
The follwing example is from the 4C debugger program sys.dbg.trace.st.
It is in the init PCL.




sys.create_tfile(sys.t_stlist);
sys.build_stlist(sys.t_stlist,sys.tp_asprog);
```

## Description

`sys.build_stlist()` builds a list of the internal 4C state stack for ONE program into a file using the sys.t_stlist file definition. This file can then be read to display the state stack.

## Bugs/Features/Comments

If more than one program is active with the same asprog name, only the most recently active one is used by `sys.build_stlist()`.

Since this is meant for internal use, the file definition may change when needed.

## See Also

[`sys.build_prlist()`]({{< ref "buildprlist.md" >}})

Back to Top

## See Also

- [sys.build_prlist()]({{< ref "buildprlist.md" >}})


