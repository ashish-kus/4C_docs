---
title: "sys.fmt_integer()"
description: "formats a integer variabl"
weight: 112
draft: false
---

## Purpose

`sys.fmt_integer()` formats a integer variable

## Usage

```text
aret = sys.fmt_integer(<ival>,<fmt>);
```

## Arguments

- `integer <ival>` — The integer value to format.
- `alpha <fmt>` — A valid format for a integer variable.

## Returns

- `alpha <aret>` — The formatted value.

## Where Used

`sys.fmt_integer()` can be called from anywhere.

## Example

```text
ival = -129;
dpyval = sys.fmt_integer(ival,">>>,>>9-");
```

## Description

`sys.fmt_integer()` formats a integer variable using the passed in format. It stores the formatted value in `<aret>`. `<ival>` is not changed by `sys.fmt_integer()`.

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

`sys.fmt_integer()`

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

