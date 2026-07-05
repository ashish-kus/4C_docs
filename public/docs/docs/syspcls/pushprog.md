# sys.push_prog()

## Purpose

`sys.push_prog()` pushes a 4C program.

## Usage

```text
sys.push_prog(<progname>[,Arg1-Arg15]);



ret = sys.push_prog(<progname> [,arg1 [,..., [arg15] ] ... ]);
```

## Arguments

- `progname` — alpha
arg1,arg2,...,arg15 0-15 optional alpha args that have meaning to
the called program.

## Returns

- `- OK` — program ran - exit code now in $wexit_code
- `-1` — Err - Could not run program

## Where Used

`sys.push_prog()` can be called from anywhere.

## Example

```text
sys.push_prog("program");
```

## Description

`sys.push_prog()` runs a 4C program at the next higher level from the current program. This means, that the current program will not regain control until the pushed program and all programs that it starts exit. When the push program exits, the current program can check $wexit_code for the exit code.

## See Also

[`sys.link_prog()`]({{< ref "linkprog.md" >}})

[`sys.exec_prog()`]({{< ref "execprog.md" >}})

Back to Top

## See Also

- [sys.link_prog()]({{< ref "linkprog.md" >}})
- [sys.exec_prog()]({{< ref "execprog.md" >}})


