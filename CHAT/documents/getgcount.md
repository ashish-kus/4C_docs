---
title: "sys.get_gcount()"
description: "Return Grand Record Coun"
weight: 148
draft: false
---

## Purpose

Return Grand Record Count

`sys.get_gcount()` returns the current grand count of CB Selected rcds for the CB EOF Group for a particular CB.

## Usage

```text
count = sys.get_gcount();
count = sys.get_gcount(<CBNAME>);



          Or more generally



count = sys.get_gcount([<CBNAME>]);




     In most cases, sys.get_gcount() will be used without arguments.
When used this way, it will work with the current CB.



     Arguments are allowed so that you can get CB EOF rcd counts without needing
to be processing a particular CB.
```

## Arguments

- `<CBNAME>` — The name of the CB that you need to get the count for.
This is an optional argument.
If it is not passed, then sys.get_gcount() uses the current CB.

## Returns

- `-1` — `<CBNAME>` is invalid.
- `>= 0` — The current grand count of CB Selected rcds for specified CB.

## Where Used

[`sys.get_count()`]({{< ref "getcount.md" >}}) can be called from anywhere as long as there is an active driver with `<CBNAME>` set appropriately to either CB_DRPROC or CB_DRSEL.

## Example

```text
     The following example could be used to skip the CB EOF processing if
no records have been CB Selected.
Assume that this call is made from the CB EOF PCL.
No arguments are passed, and sys.get_gcount() returns the total count of
records CB Selected for the CB EOF Group of the current CB.



     if (sys.get_gcount() == 0)
          sys.exit_cb();



     The next example could be used to skip the printing of totals
if only 1 record has been CB Selected.
Assume that this call is also made from the CB EOF PCL.
No arguments are passed, and sys.get_gcount() returns the grand count of
records CB Selected for the current CB.



     if (sys.get_gcount() > 1)
          printtots();
```

## Description

`sys.get_gcount()` returns the current grand count of CB Selected rcds for a particular CB. It can be called with 0 or 1 arguments. The grand rcd count is the same as the rcd count for the CB EOF Group.

If called with 0 arguments, then the current grand count of CB Selected rcds for the current CB is returned.

If used with 1 arg, the arg is `<CBNAME>`. `sys.get_gcount()` will return the grand count of CB Selected rcds for the current CB. You may want to use `sys.get_gcount()` in this manner if you need to access the current grand rcd count of any CB outside of the processing for that CB.

Thus, you can get any grand rcd count for any currently active CB from any PCL.

4C maintains the grand rcd count for each CB as the CB EOF Group rcd count. The grand rcd count is updated at the same time that totals are updated. That is, the grand rcd count is updated after the rcd has been CB Selected and before running the DRSELECT or DRPROC PCL. The grand rcd count is never reset to zero.

## See Also

[`sys.get_count()`]({{< ref "getcount.md" >}}) `sys.get_gcount()` [`sys.get_max()`]({{< ref "getmax.md" >}}) [`sys.get_gmax()`]({{< ref "getgmax.md" >}}) [`sys.get_min()`]({{< ref "getmin.md" >}}) [`sys.get_gmin()`]({{< ref "getgmin.md" >}}) [`sys.get_tot()`]({{< ref "gettot.md" >}}) [`sys.get_gtot()`]({{< ref "getgtot.md" >}})

Back to Top

