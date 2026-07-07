---
title: "atodate()"
description: "converts an alpha date to the internal integer format"
weight: 3
draft: false
---

## Purpose

`atodate()` converts an alpha date to the internal integer format.

## Usage

```text
idate = atodate(<adate>);
```

## Arguments

- `alpha <adate>` — An alpha date in "mm/dd/yy" or "mm/dd/yyyy" format.

## Returns

- `date <idate>` — internal date - which is an integer.
- `> 0` — The internal date representation of `<adate>`
- `0` — Error - bad format or Illegal date.

## Where Used

`atodate()` can be called from anywhere.

## Description

`atodate()` converts an alpha date to the 4C date format. The 4C date format is an integer representing the number of days since Dec 31, 1799. Thus, Jan 1, 1800 is represented by 1. 4C Does not deal with dates earlier than Jan 1, 1800.

## Bugs/Features/Comments

There is no way to specify the `<adate>` in anything besides American date format.

## See Also

`atodate()`

[`atoi()`]({{< ref "atoi.md" >}})

[`atof()`]({{< ref "atof.md" >}})

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

