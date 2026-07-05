# itoa()

## Purpose

`itoa()` converts an integer field to an alpha field, and returns the alpha field.

## Usage

```text
aval = itoa(ival);
```

## Arguments

integer ival;

## Returns

- `<aval>` — alpha representation of `<ival>`
There are no error returns from this PCL.

## Where Used

`itoa()` can be called from anywhere.

## Example

```text
push_prog("an.call.de.1",itoa($row_ofst+1),"0");
```

## Description

This PCL takes one integer argument and converts it to an alpha, returning the alpha.

## See Also

[`atodate()`]({{< ref "atodate.md" >}}) [`atoi()`]({{< ref "atoi.md" >}}) [`atof()`]({{< ref "atof.md" >}}) [`ftoa()`]({{< ref "ftoa.md" >}}) [`sys.fmt_alpha()`]({{< ref "fmtalpha.md" >}}) [`sys.fmt_choice()`]({{< ref "fmtchoice.md" >}}) [`sys.fmt_date()`]({{< ref "fmtdate.md" >}}) [`sys.fmt_float()`]({{< ref "fmtfloat.md" >}}) [`sys.fmt_integer()`]({{< ref "fmtinteger.md" >}}) [`sys.fmt_time()`]({{< ref "fmttime.md" >}})

Back to Top


