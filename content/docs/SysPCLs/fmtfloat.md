---
title: "sys.fmt_float()"
description: "formats a float variabl"
weight: 111
draft: false
---

## Purpose

`sys.fmt_float()` formats a float variable

## Usage

```text
aret = sys.fmt_float(<fval>,<fmt>);
```

## Arguments

- `float <fval>` — The float value to format.
- `alpha <fmt>` — A valid format for a float variable.

## Returns

- `alpha <aret>` — The formatted value.

## Where Used

`sys.fmt_float()` can be called from anywhere.

## Example

```text
fval = 129.23;
dpyval = sys.fmt_float(fval,">>>,>>9.99-");
```

## Description

`sys.fmt_float()` formats a float variable using the passed in format. It stores the formatted value in `<aret>`. `<fval>` is not changed by `sys.fmt_float()`.

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

`sys.fmt_float()`

[`sys.fmt_integer()`]({{< ref "fmtinteger.md" >}})

[`sys.fmt_time()`]({{< ref "fmttime.md" >}})

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

