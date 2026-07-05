# sys.get_datetype()

## Purpose

`sys.get_datetype()` returns the current input date format.

## Usage

```text
datetype = sys.get_datetype();
```

## Arguments

None

## Returns

alpha `<datetype>`
- `"AMERICAN"` — Current date input format is American.
- `"EUROPEAN"` — Current date input format is European.

## Where Used

`sys.get_datetype()` can be called from anywhere.

## Description

`sys.get_datetype()` returns the current input date format. The type returned is either "AMERICAN" or "EUROPEAN".

## See Also

[`sys.set_datetype()`]({{< ref "setdatetype.md" >}})

Back to Top


