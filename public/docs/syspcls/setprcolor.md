# sys.set_prcolor()

## Purpose

`sys.set_prcolor()` allows a program to dynamically change the background and foreground color of a program.

## Usage

```text
ret = sys.set_prcolor(<fgrgbval>,<bgrgbval>);
```

## Arguments

- `<fgrgbval>` — alpha var in "rrr:ggg:bbb" format
If `<fgrgbval>` is "", it will not be changed.
If it is "Default", it will change to the programs
default foreground.
- `<bgrgbval>` — alpha var in "rrr:ggg:bbb" format
If `<bgrgbval>` is "", it will not be changed.
If it is "Default", it will change to the programs
default background.

## Returns

The only value returned currently is 0.

## Where Used

`sys.set_prcolor()` can be called from anywhere but probably should be called from either the Init PCL or the DrInit PCL.

## Description

`sys.set_prcolor()` allows a program to dynamically change the background and foreground color of a program. This can be useful if it cannot be known at layout compile time.

## Bugs/Features/Comments

`sys.set_prcolor()` is only implemented for scrolling programs

## See Also

[`sys.set_dfcolor()`]({{< ref "setdfcolor.md" >}})

[`sys.set_dricolor()`]({{< ref "setdricolor.md" >}})

Back to Top

## See Also

- [sys.set_dfcolor()]({{< ref "setdfcolor.md" >}})
- [sys.set_dricolor()]({{< ref "setdricolor.md" >}})


