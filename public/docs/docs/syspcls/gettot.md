# sys.get_tot()

## Purpose

`sys.get_tot()` returns the current running total of a CB TOT Var for a CB Var/EOF Group for a particular CB.

## Usage

```text
tot = sys.get_tot(<cbtot>);
tot = sys.get_tot(<cbvar>,<cbtot>);
tot = sys.get_tot(<CBNAME>,<cbvar>,<cbtot>);



          Or more generally



tot = sys.get_tot([[<CBNAME>,]<cbvar>,]<cbtot>);




     In most cases, sys.get_tot() will be used with one argument.
When used this way,
it will work with the current CB and the current
CB Var/EOF Group.



     Optional arguments are allowed so that you can get running totals
without needing
to be processing a particular CB Var Group or even a particular CB.
```

## Arguments

- `<CBNAME>` — The name of the CB that you need to get a running total for.
This is an optional argument.
If it is not passed, then sys.get_tot() uses the current CB.
If it is passed, then the `<cbvar>` argument must also be passed.
- `<cbvar>` — The fldname that defines the CB Var Group
that you want the running total for.
This is an optional argument as long as the `<CBNAME>` argument is
not used.
If `<cbvar>` is not used, then sys.get_tot()
assumes the current CB Var/EOF Group for the current CB.
- `<cbtot>` — The name of the CB TOT Var to return the running total for.
This argument must always be specified.

## Returns

sys.get_tot() can return integer or float.
Since any value is valid for a tot, there is no way to
return a unique bad value, however sys.get_tot() will try to
return a bad value when necessary.
A bad return for a float is -1.0, and a bad ret for an
integer is -1.
Thus the following may be considered bad returns sometimes,
but they could also be perfectly valid.
- `-1.0` — OR
- `-1` — Either `<CBNAME>`, `<cbvar>`, or `<cbtot>` is invalid.
- `AnyValue` — The current running total of the CB TOT Var
for specified CB and CB Var Group.

## Where Used

`sys.get_tot()` can be called from anywhere as long as there is an active driver with `<CBNAME>` set appropriately to either CB_DRPROC or CB_DRSEL.

## Example

```text
     The following example gets the current running total for the
CB TOT Var sys.pr_syssize for the current CB Var/EOF Group
for the current CB.



     tot = sys.get_tot(sys.pr_syssize);
```

## Description

`sys.get_tot()` returns the current running total of a CB TOT Var for a CB Var/EOF Group for a particular CB. It can be called with 1, 2, or 3 arguments.

If called with 1 arg, the arg is `<cbtot>`. `sys.get_tot()` will return the current running total of the CB TOT Var for the Current CB Var/EOF Group for the current CB.

If used with 2 args, the args are `<cbvar>` and `<cbtot>`. `sys.get_tot()` will return the current running total of the CB TOT Var for the specified CB Var Group for the current CB. You may want to use `sys.get_tot()` in this manner if you need to access a CB TOT Var of a particular CB Var Group for the current CB outside of the current CB Var Group.

If used with 3 args, the args are `<CBNAME>`, `<cbvar>`, and `<cbtot>`. `sys.get_tot()` will return the running total of the CB TOT Var for the specified CB Var for the specified CB. You may want to use `sys.get_tot()` in this manner if you need to access a CB TOT Var for a particular CB Var Group of any CB outside of the processing for that CB.

Thus, you can get a running total for any CB TOT Var for any CB Var Group for any currently active CB from any PCL.

In order to get a running total of a CB TOT Var for the CB EOF Group outside of the CB EOF Group processing, you need to call [`sys.get_gtot()`]({{< ref "getgtot.md" >}}) instead of `sys.get_tot()`.

4C maintains running totals for each CB TOT Var that was defined as TOT for each CB Var group and for the CB EOF Group. This value is updated after the rcd has been CB Selected and before running the DRSELECT or DRPROC PCL. After a CB is processed, the running totals of all CB TOT Vars for each CB Var Group at the same or lower level than the triggering group are set to NULL. The running totals of the CB TOT Vars for all higher level CB Var Groups and of the CB EOF Group are not modified.

## See Also

[`sys.get_count()`]({{< ref "getcount.md" >}}) [`sys.get_gcount()`]({{< ref "getgcount.md" >}}) [`sys.get_max()`]({{< ref "getmax.md" >}}) [`sys.get_gmax()`]({{< ref "getgmax.md" >}}) [`sys.get_min()`]({{< ref "getmin.md" >}}) [`sys.get_gmin()`]({{< ref "getgmin.md" >}}) `sys.get_tot()` [`sys.get_gtot()`]({{< ref "getgtot.md" >}})

Back to Top


