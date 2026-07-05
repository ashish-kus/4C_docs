---
title: "sys.fmt_date()"
description: "formats a date variabl"
weight: 109
draft: false
---

## Purpose

`sys.fmt_date()` formats a date variable

## Usage

```text
aret = sys.fmt_date(<dtval>,<fmt>);
```

## Arguments

- `date <dtval>` — The date value to format.
- `alpha <fmt>` — A valid format for a date variable.

## Returns

- `alpha <aret>` — The formatted value.

## Where Used

`sys.fmt_date()` can be called from anywhere.

## Example

```text
dt = atodate("01/01/1970");
dpyval = sys.fmt_date(dt,"mm/dd/yyyy");
```

## Description

`sys.fmt_date()` formats a date variable using the passed in format. It stores the formatted value in `<aret>`. `<dtval>` is not changed by `sys.fmt_date()`.

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

`sys.fmt_date()`

[`sys.fmt_float()`]({{< ref "fmtfloat.md" >}})

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

