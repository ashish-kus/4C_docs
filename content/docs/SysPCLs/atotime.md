---
title: "atotime()"
description: "converts a string to a 4C time"
weight: 6
draft: false
---

## Purpose

`atotime()` converts a string to a 4C time.

## Usage

```text
tval = atotime(<timestr>);
```

## Arguments

- `alpha <timestr>` — An alpha representation of a time.

## Returns

- `-1` — Invalid time string
- `>= 0` — The 4c time.

## Where Used

`atotime()` can be called from anywhere.

## Example

```text
Example
```

## Description

`atotime()` converts a string to a 4c time value similar. It is fairly flexible, but expects the `<timestr>` to have only digits, spaces, ':'s and an optional "am", "a", "pm" or "p" suffix.

Requirements

4cserver version 6.4.7 or later.

## Bugs/Features/Comments

Bugs

## See Also

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

