# sys.set_cmenu()

## Purpose

`sys.set_cmenu()` lets the application change the current context menu.

## Usage

```text
ret = sys.set_cmenu(CMNAME);
```

## Arguments

- `integer` — CMNAME - The name of the ContextMenu.
This name gets mapped to an integer when the program is compiled.
Do not enclose it in quotes.

## Returns

- `0` — Context Menu Set OK
- `-1` — Invalid ContextMenu Specified.

## Where Used

`sys.set_cmenu()` can be called from anywhere in a Screen Program.

## Description

`sys.set_cmenu()` is used to change the current context menu of a program. If your program has only one context menu, you will not need to call this PCL. The first context menu of a program is always set as the default when the program runs.

## See Also

[`sys.set_cmitem()`]({{< ref "setcmitem.md" >}})

Back to Top

## See Also

- [sys.set_cmitem()]({{< ref "setcmitem.md" >}})


