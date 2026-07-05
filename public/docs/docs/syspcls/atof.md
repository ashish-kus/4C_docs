# atof()

## Purpose

`atof()` converts an alpha field to a float field, and returns the float field.

## Usage

```text
fval = atof(aval);
```

## Arguments

alpha aval;

## Returns

float fval;

There are no error returns from this PCL.

## Where Used

`atof()` can be called from anywhere.

## Example

```text
fl = atof("3.24");
```

## Description

This PCL takes one alpha argument and converts it to a float, returning the float. A leading or trailing sign can be used. It is possible to get garbage in the return if the alpha argument was garbage also.

## Bugs/Features/Comments

`atof()` does not verify the format of aval.

## See Also

[`atodate()`]({{< ref "atodate.md" >}})

[`atoi()`]({{< ref "atoi.md" >}})

`atof()`

[`ftoa()`]({{< ref "ftoa.md" >}})

[`itoa()`]({{< ref "itoa.md" >}})

[`sys.fmt_alpha()`]({{< ref "fmtalpha.md" >}})

[`sys.fmt_choice()`]({{< ref "fmtchoice.md" >}})

[`sys.fmt_date()`]({{< ref "fmtdate.md" >}})

[`sys.fmt_float()`]({{< ref "fmtfloat.md" >}})

[`sys.fmt_integer()`]({{< ref "fmtinteger.md" >}})

[`sys.fmt_time()`]({{< ref "fmttime.md" >}})

Back to Top

## See Also

- [atodate()]({{< ref "atodate.md" >}})
- [atoi()]({{< ref "atoi.md" >}})
- [atof()]({{< ref "atof.md" >}})
- [ftoa()]({{< ref "ftoa.md" >}})
- [itoa()]({{< ref "itoa.md" >}})
- [sys.fmt_alpha()]({{< ref "fmtalpha.md" >}})
- [sys.fmt_choice()]({{< ref "fmtchoice.md" >}})
- [sys.fmt_date()]({{< ref "fmtdate.md" >}})
- [sys.fmt_float()]({{< ref "fmtfloat.md" >}})
- [sys.fmt_integer()]({{< ref "fmtinteger.md" >}})
- [sys.fmt_time()]({{< ref "fmttime.md" >}})


