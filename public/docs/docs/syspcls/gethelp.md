# sys.get_help()

## Purpose

`sys.get_help()` returns the value of the 4C environment variable XLHELPMSG.

## Usage

```text
helpmsg = sys.get_help();
```

## Arguments

None

## Returns

alpha `<helpmsg>`
- `"ON"` — Field Help is on.
- `"OFF"` — Field Help is off.

## Where Used

`sys.get_help()` can be called from anywhere. It is most likely used in system programs that may allow the user to change the value.

## Example

```text
In the system program sys.help.set, the Init PCL calls sys.get_help()
in order to display the current value before allowing the user to
change it.
The entire Init PCL follows:




helpmsg = sys.get_help();
fkhelp = sys.get_fkhelp();
msgl1 = sys.get_msgline1();
msgl2 = sys.get_msgline2();
retsel = sys.get_return();
```

## Description

`sys.get_help()` returns the value of the 4C environment variable XLHELPMSG. This env variable is used to control whether 4C automatically displays help messages on all input fields. If `sys.get_help()` returns "ON", then 4C will display input field help messages. If the return is "OFF", then 4C does not display any input field help messages without the user explicitly requesting it.

## Bugs/Features/Comments

The values stored in the 4C Environment variables may be different than those at the shell. Calls to [`sys.set_help()`]({{< ref "sethelp.md" >}}) etc do not modify the shell's environment, only 4C's internal copy. Even shells started from 4C will not share the same environment if the 4C environment has changed during running.

Of Course this is subject to change.

## See Also

[`sys.get_fkhelp()`]({{< ref "getfkhelp.md" >}}) [`sys.get_msgline1()`]({{< ref "getmsgline1.md" >}}) [`sys.get_msgline2()`]({{< ref "getmsgline2.md" >}}) [`sys.get_return()`]({{< ref "getreturn.md" >}}) [`sys.set_fkhelp()`]({{< ref "setfkhelp.md" >}}) [`sys.set_help()`]({{< ref "sethelp.md" >}}) [`sys.set_msgline1()`]({{< ref "setmsgline1.md" >}}) [`sys.set_msgline2()`]({{< ref "setmsgline2.md" >}}) [`sys.set_return()`]({{< ref "setreturn.md" >}})

Back to Top


