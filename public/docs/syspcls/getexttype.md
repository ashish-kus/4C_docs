# sys.get_exttype()

## Purpose

`sys.get_exttype()` returns the external type of a 4C file defined as External

## Usage

```text
type = sys.get_exttype(<asfile>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file you want to get the
ext type for.

## Returns

- `""` — `<asfile>` is not defined as External.
- `any alpha` — the exttype of `<asfile>`

## Where Used

`sys.get_exttype()` can be called from anywhere.

## Description

sys.get_exttype(`<asfile>`) returns the External type of the file.

## See Also

[`sys.set_exttype()`]({{< ref "setexttype.md" >}})

Back to Top

## See Also

- [sys.set_exttype()]({{< ref "setexttype.md" >}})


