---
title: "sys.get_count()"
description: "returns the current count of CB Selected rcd"
weight: 126
draft: false
---

## Purpose

`sys.get_count()` returns the current count of CB Selected rcds for a CB Var/EOF Group for a particular CB.

## Usage

```text
count = sys.get_count();
count = sys.get_count(<cbvar>);
count = sys.get_count(<CBNAME>,<cbvar>);



          Or more generally



count = sys.get_count([[<CBNAME>,]<cbvar>]);




     In most cases, sys.get_count() will be used without arguments.
When used this way, it will work with the current CB and the current
CB Var/EOF Group.



     Arguments are allowed so that you can get rcd counts without needing
to be processing a particular CB Var Group or even a particular CB.
```

## Arguments

- `<CBNAME>` — The name of the CB that you need to get the count for.
This is an optional argument.
If it is not passed, then sys.get_count() uses the current CB.
If it is passed, then the `<cbvar>` argument must also be passed.
- `<cbvar>` — The fldname that defines the CB Var Group
that you want the rcd count for.
This is an optional argument as long as the `<CBNAME>` argument is
not used.
If `<cbvar>` is not used, then sys.get_count()
returns the rcd count for the
current CB Var/EOF Group for the current CB.

## Returns

- `-1` — Either `<CBNAME>` or `<cbvar>` is invalid.
- `>= 0` — The current count of CB Selected rcds for specified CB and CB Var Group.

## Where Used

`sys.get_count()` can be called from anywhere as long as there is an active driver with `<CBNAME>` set appropriately to either CB_DRPROC or CB_DRSEL.

## Example

```text
     The following example could be used to skip the CB EOF processing if
no records have been CB Selected.
Assume that this call is made from the CB EOF PCL.
No arguments are passed, and sys.get_count() returns the total count of
records CB Selected for the CB EOF Group of the current CB.



     if (sys.get_count() == 0)
          sys.exit_cb();



     The next example could be used to skip the printing of totals
if only 1 record has been CB Selected.
Assume that this call is made from Any CB Var Group PCL.
No arguments are passed, and sys.get_count() returns the count of
records CB Selected for the current CB Var Group of the current CB.



     if (sys.get_count() > 1)
          printtots();
```

## Description

`sys.get_count()` returns the current count of CB Selected rcds for a CB Var/EOF Group for a particular CB. It can be called with 0, 1, or 2 arguments.

If called with 0 arguments, then the current count of CB Selected rcds for the Current CB Var/EOF Group of the current CB is returned.

If used with 1 arg, the arg is `<cbvar>`. `sys.get_count()` will return the count of CB Selected rcds for the specified CB Var Group for the current CB. You may want to use `sys.get_count()` in this manner if you need to access a CB Var Group rcd count for the current CB outside of the current CB Var Group.

If used with 2 args, the args are CBNAME and `<cbvar>`. `sys.get_count()` will return the count of CB Selected rcds for the specified CB Var for the specified CB. You may want to use `sys.get_count()` in this manner if you need to access a CB Var Group rcd count of any CB outside of the processing for that CB.

Thus, you can get any rcd count for any CB Var Group for any currently active CB from any PCL.

In order to get a CB EOF rcd count outside of the CB EOF Group processing, you need to call [`sys.get_gcount()`]({{< ref "getgcount.md" >}}) instead of `sys.get_count()`.

4C maintains rcd counts for each CB Var group and for the CB EOF Group. These rcd counts are updated at the same time that totals are updated. That is, the rcd counts are updated after the rcd has been CB Selected and before running the DRSELECT or DRPROC PCL. After a CB is processed, the rcd counts of all CB Var Groups at the same or lower level than the triggering group are set back to zero. The rcd counts of higher level CB Var Groups and of the CB EOF Group are not modified.

## See Also

`sys.get_count()` [`sys.get_gcount()`]({{< ref "getgcount.md" >}}) [`sys.get_max()`]({{< ref "getmax.md" >}}) [`sys.get_gmax()`]({{< ref "getgmax.md" >}}) [`sys.get_min()`]({{< ref "getmin.md" >}}) [`sys.get_gmin()`]({{< ref "getgmin.md" >}}) [`sys.get_tot()`]({{< ref "gettot.md" >}}) [`sys.get_gtot()`]({{< ref "getgtot.md" >}})

Back to Top

