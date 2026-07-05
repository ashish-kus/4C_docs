# sys.get_field()

## Purpose

`sys.get_field()` returns current display field's name.

## Usage

```text
fldname = sys.get_field();
```

## Arguments

None

## Returns

alpha `<fldname>`
- `any alpha` — The current display field's name.

## Where Used

`sys.get_field()` can be called anytime there is a current display field. That is, anytime between SFldLp and EFldLp processing.

## Description

`sys.get_field()` returns the name of the current display field. This may be useful if the same PCL is called from more than one field and you need to display the name of the field for some reason, or just to distinguish between the fields that may have called the PCL.

## See Also

[`sys.get_program()`]({{< ref "getprogram.md" >}}) [`sys.get_category()`]({{< ref "getcategory.md" >}})

Back to Top


