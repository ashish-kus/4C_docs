# sys.set_return()

## Purpose

`sys.set_return()` allows you to change the 4C environment variable XLRETURN.

## Usage

```text
sys.set_return(<retsel>);
```

## Arguments

- `alpha <retsel>` — Should be "SELECT" or "NOSELECT"

## Returns

None

## Where Used

`sys.set_return()` can be called from anywhere. It is most likely used in system programs that may allow the user to change the enviroment.

## Example

```text
In the system program sys.help.set, the EndFld PCL for ok calls sethelp()
which in turn calls sys.set_return() to set the user specified value
for XLRETURN.
The entire sethelp() PCL follows:




sys.set_help(helpmsg);
sys.set_fkhelp(fkhelp);
sys.set_msgline1(msgl1);
sys.set_msgline2(msgl2);
sys.set_return(retsel);
```

## Description

`sys.set_return()` sets the value of the 4C environment variable XLRETURN. This env variable is used to control how a select screen acts when a `<RETURN>` is typed. If set to "SELECT", then a select screen will treat the `<RETURN>` key like accept. Otherwise, it will not.

## Bugs/Features/Comments

No errors returned for illegal val. If not set to "SELECT", "NOSELECT" is assumed.

The values stored in the 4C Environment variables may be different than those at the shell. Calls to [`sys.set_help()`]({{< ref "sethelp.md" >}}) etc do not modify the shell's environment, only 4C's internal copy. Even shells started from 4C will not share the same environment if the 4C environment has changed during running.

Of Course this is subject to change.

## See Also

[`sys.get_fkhelp()`]({{< ref "getfkhelp.md" >}}) [`sys.get_help()`]({{< ref "gethelp.md" >}}) [`sys.get_msgline1()`]({{< ref "getmsgline1.md" >}}) [`sys.get_msgline2()`]({{< ref "getmsgline2.md" >}}) [`sys.get_return()`]({{< ref "getreturn.md" >}}) [`sys.set_fkhelp()`]({{< ref "setfkhelp.md" >}}) [`sys.set_help()`]({{< ref "sethelp.md" >}}) [`sys.set_msgline1()`]({{< ref "setmsgline1.md" >}}) [`sys.set_msgline2()`]({{< ref "setmsgline2.md" >}})

Back to Top


