# sys.fmt_time()

## Purpose

`sys.fmt_time()` formats a time variable

## Usage

```text
aret = sys.fmt_time(<tmval>,<fmt>);
```

## Arguments

- `time <tmval>` — The time value to format.
- `alpha <fmt>` — A valid format for a time variable.

## Returns

- `alpha <aret>` — The formatted value.

## Where Used

`sys.fmt_time()` can be called from anywhere.

## Example

```text
tm = (14 * 60 * 60) + (32 * 60) + 24;
dpyval = sys.fmt_time(tm,"HH:mm:ss");
```

## Description

`sys.fmt_time()` formats a time variable using the passed in format. It stores the formatted value in `<aret>`. `<tmval>` is not changed by `sys.fmt_time()`.

## Bugs/Features/Comments

It's difficult to tell if you passed in an invalid format, though if you do, the application will probably display an error message at runtime.

## See Also

[`sys.fmt_field()`]({{< ref "fmtfield.md" >}})

[`atodate()`]({{< ref "atodate.md" >}})

[`atoi()`]({{< ref "atoi.md" >}})

[`atof()`]({{< ref "atof.md" >}})

[`ftoa()`]({{< ref "ftoa.md" >}})

[`itoa()`]({{< ref "itoa.md" >}})

[`sys.fmt_alpha()`]({{< ref "fmtalpha.md" >}})

[`sys.fmt_choice()`]({{< ref "fmtchoice.md" >}})

[`sys.fmt_date()`]({{< ref "fmtdate.md" >}})

[`sys.fmt_float()`]({{< ref "fmtfloat.md" >}})

[`sys.fmt_integer()`]({{< ref "fmtinteger.md" >}})

`sys.fmt_time()`

Back to Top

## See Also

- [sys.fmt_field()]({{< ref "fmtfield.md" >}})
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


