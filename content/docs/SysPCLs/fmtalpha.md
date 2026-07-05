---
title: "sys.fmt_alpha()"
description: "formats an alpha variabl"
weight: 107
draft: false
---

## Purpose

`sys.fmt_alpha()` formats an alpha variable

## Usage

```text
aret = sys.fmt_alpha(<aval>,<fmt>);
```

## Arguments

- `alpha <aval>` — The alpha value to format.
- `alpha <fmt>` — A valid format for an alpha variable.

## Returns

- `alpha <aret>` — The formatted value.

## Where Used

`sys.fmt_alpha()` can be called from anywhere.

## Example

```text
ssno = "123456789";
dpyval = sys.fmt_alpha(ssno,"999-99-9999");
```

## Description

`sys.fmt_alpha()` formats an alpha variable using the passed in format. It stores the formatted value in `<aret>`. `<aval>` is not changed by `sys.fmt_alpha()`.

## Bugs/Features/Comments

It's difficult to tell if you passed in an invalid format, though if you do, the application will probably display an error message at runtime.

## See Also

[`sys.fmt_field()`]({{< ref "fmtfield.md" >}})

[`atodate()`]({{< ref "atodate.md" >}})

[`atoi()`]({{< ref "atoi.md" >}})

[`atof()`]({{< ref "atof.md" >}})

[`ftoa()`]({{< ref "ftoa.md" >}})

[`itoa()`]({{< ref "itoa.md" >}})

`sys.fmt_alpha()`

[`sys.fmt_choice()`]({{< ref "fmtchoice.md" >}})

[`sys.fmt_date()`]({{< ref "fmtdate.md" >}})

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

