# sys.get_parent()

## Purpose

`sys.get_parent()` returns the asprog name of the parent of the current program or of the program specified in the `<asprog>` argument.

## Usage

```text
parent = sys.get_parent([<asprog>]);
```

## Arguments

- `asprog <asprog>` — The asprog name of the program you want the
name of the parent of.
This is an optional argument, and if it is not used, then the
current program is assumed.

## Returns

- `""` — Either no such asprog `<asprog>`, or `<asprog>` is at the top
of the 4C hierarchy and has no parent.
- `parent` — The asprog name of the parent of `<asprog>`

## Where Used

`sys.get_parent()` can be called from anywhere.

## Description

`sys.get_parent()` returns the asprog name of the parent of the current program or of the program specified in the `<asprog>` argument. The parent may or may not be the program that started `<asprog>`. If `<asprog>` was pushed, then it will be the calling program. If `<asprog>` was linked, then it will be the program that pushed the first program on the same level as `<asprog>`. If `<asprog>` was execed, then its parent is the parent of the program that execed it.

## Bugs/Features/Comments

If more than one program exist with the same `<asprog>` name, `sys.get_parent()` only ever sees one of them. It will be the most recently used.

There is no way to determine the name of the program that called a program, except for a pushed program where the parent program is the calling program.

## See Also

Back to Top


