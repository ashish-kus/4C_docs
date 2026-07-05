# sys.kill_prog()

## Purpose

`sys.kill_prog()` kills the program specified by the `<asprog>` argument.

## Usage

```text
ret = sys.kill_prog(<asprog>,[exitcode], [killflags]);
```

## Arguments

- `asprog <asprog>` — The asprog name of the program that
is to be killed.
- `integer [exitcode]` — optional arg to set the exit code of the
program killed.
If you do not set this, then the value EXIT_KILL is the exit code
of your program.
Normally, if you set this arg, you will use EXIT_KILL for the exit code.
- `integer [killflags]` — Optional arg to specify how kill should work.
These flags can be or'd together.
If you specify killflags, then the optional arg [exitcode] needs to be
specified also.
You can use any of the following for [killflags].
- `K_SINGLE` — Kill only the program specified.
This is the default if no killflags are specified.
- `K_CHILDREN` — Kill all children of program specified.
This flag alone will not kill the program specified, only
programs that are children of it.
- `K_LEVEL` — Kill all programs on same level or lower than program specified.
- `K_DEFAULT` — Shorthand for K_SINGLE|K_CHILDREN.
This is NOT the default if no flags are specified.

## Returns

- `0` — OK - program killed
- `-1` — No such program `<asprog>`.

## Where Used

`sys.kill_prog()` can be called from anywhere. Currently it is used by the 4C debugger.

## Example

```text
The 4C debugger program sys.dbg.kill allows you to kill a
running program from the debugger.
The following code comes from the killit PCL of this program.




if (killflag == 'y') {
    beep();
    return;
}
sys.kill_prog(sys.tp_asprog);
killflag = 'y'
```

## Description

`sys.kill_prog()` kills a 4C program. It can only be used for the current 4C session. You cannot kill a program of another 4C process. Killing a program causes the killed program to set run the PrEnd PCL when it regains control. One effect of killing a program is that when control returns to it, it will not redraw itself.

## Bugs/Features/Comments

When a program is killed, the End PCL and the Exit PCL will both be executed. This may need to be changed.

## See Also

Back to Top


