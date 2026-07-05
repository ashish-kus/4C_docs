# sys.get_dffileno()

## Purpose

`sys.get_dffileno()` returns the internal asfile identifier associated with a display field.

## Usage

```text
<filenum> = sys.get_dffileno(<dflabel>);
```

## Arguments

- `integer <dflabel>` — should be the DFLABEL for the display field.

## Returns

integer `<filenum>`
- `>= 0` — The filenum of the asfile associated with
`<dflabel>`
- `< 0` — Invalid `<dflabel>`

## Where Used

`sys.get_dffileno()` can be called from any program that has display fields.

## Description

`sys.get_dffileno()` returns the internal asfile identifier associated with a single display field. 4C refers to all files internally by an integer. This integer can be used in any PCL that expects an `<asfile>` parameter such as [`sys.read_file()`]({{< ref "readfile.md" >}}). You need to pass a valid display field number which can be the `<dflabel>` of a display field, but could also be one of the local system variables such as sys.cmd_field, sys.cur_field, or sys.next_field.

## See Also

Back to Top


