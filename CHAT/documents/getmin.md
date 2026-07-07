---
title: "sys.get_min()"
description: "returns the current min val of a CB TOT Va"
weight: 164
draft: false
---

## Purpose

`sys.get_min()` returns the current min val of a CB TOT Var for a CB Var/EOF Group for a particular CB.

## Usage

```text
min = sys.get_min(<cbtot>);
min = sys.get_min(<cbvar>,<cbtot>);
min = sys.get_min(<CBNAME>,<cbvar>,<cbtot>);



          Or more generally



min = sys.get_min([[<CBNAME>,]<cbvar>,]<cbtot>);




     In most cases, sys.get_min() will be used with one argument.
When used this way,
it will work with the current CB and the current
CB Var/EOF Group.



     Optional arguments are allowed so that you can get min vals without needing
to be processing a particular CB Var Group or even a particular CB.
```

## Arguments

- `<CBNAME>` — The name of the CB that you need to get a min val for.
This is an optional argument.
If it is not passed, then sys.get_min() uses the current CB.
If it is passed, then the `<cbvar>` argument must also be passed.
- `<cbvar>` — The fldname that defines the CB Var Group
that you want the min val for.
This is an optional argument as long as the `<CBNAME>` argument is
not used.
If `<cbvar>` is not used, then sys.get_min()
assumes the current CB Var/EOF Group for the current CB.
- `<cbtot>` — The name of the CB TOT Var to return the min val for.
This argument must always be specified.

## Returns

sys.get_min() can return alpha, integer or float.
Since any value is valid for a min, there is no way to
return a unique bad value, however sys.get_min() will try to
return a bad value when necessary.
A bad return for an alpha is the NULL string, or "".
A bad return for a float is -1.0, and a bad ret for an
integer is -1.
Thus the following may be considered bad returns sometimes,
but they could also be perfectly valid.
- `""` — OR
- `-1.0` — OR
- `-1` — Either `<CBNAME>`, `<cbvar>`, or `<cbtot>` is invalid.
- `AnyValue` — The current min of the CB TOT Var for specified CB and CB Var Group.

## Where Used

`sys.get_min()` can be called from anywhere as long as there is an active driver with `<CBNAME>` set appropriately to either CB_DRPROC or CB_DRSEL.

## Example

```text
     The following example gets the current min value for the
CB TOT Var sys.pr_syssize for the current CB Var/EOF Group
for the current CB.



     min = sys.get_min(sys.pr_syssize);
```

## Description

`sys.get_min()` returns the current min val of a CB TOT Var for a CB Var/EOF Group for a particular CB. It can be called with 1, 2, or 3 arguments.

If called with 1 arg, the arg is `<cbtot>`. `sys.get_min()` will return the current min val of the CB TOT Var for the Current CB Var/EOF Group for the current CB.

If used with 2 args, the args are `<cbvar>` and `<cbtot>`. `sys.get_min()` will return the current min val of the CB TOT Var for the specified CB Var Group for the current CB. You may want to use `sys.get_min()` in this manner if you need to access a CB TOT Var of a particular CB Var Group for the current CB outside of the current CB Var Group.

If used with 3 args, the args are `<CBNAME>`, `<cbvar>`, and `<cbtot>`. `sys.get_min()` will return the min val of the CB TOT Var for the specified CB Var for the specified CB. You may want to use `sys.get_min()` in this manner if you need to access a CB TOT Var for a particular CB Var Group of any CB outside of the processing for that CB.

Thus, you can get any CB TOT Var min val for any CB Var Group for any currently active CB from any PCL.

In order to get a CB TOT Var min val for the CB EOF Group outside of the CB EOF Group processing, you need to call [`sys.get_gmin()`]({{< ref "getgmin.md" >}}) instead of `sys.get_min()`.

4C maintains min values for each CB TOT Var that was defined as MIN for each CB Var group and for the CB EOF Group. This value is updated at the same time that totals are updated. That is, the min value is updated after the rcd has been CB Selected and before running the DRSELECT or DRPROC PCL. After a CB is processed, the min values of all CB TOT Vars for each CB Var Group at the same or lower level than the triggering group are set to NULL. The min values of the CB TOT Vars for all higher level CB Var Groups and of the CB EOF Group are not modified.

## See Also

[`sys.get_count()`]({{< ref "getcount.md" >}}) [`sys.get_gcount()`]({{< ref "getgcount.md" >}}) [`sys.get_max()`]({{< ref "getmax.md" >}}) [`sys.get_gmax()`]({{< ref "getgmax.md" >}}) `sys.get_min()` [`sys.get_gmin()`]({{< ref "getgmin.md" >}}) [`sys.get_tot()`]({{< ref "gettot.md" >}}) [`sys.get_gtot()`]({{< ref "getgtot.md" >}})

Back to Top

