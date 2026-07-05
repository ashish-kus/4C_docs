# sys.get_gmax()

## Purpose

Return Grand Max Val

`sys.get_gmax()` returns the current grand max val of a CB TOT Var for the CB EOF Group for a particular CB.

## Usage

```text
max = sys.get_gmax(<cbtot>);
max = sys.get_gmax(<CBNAME>,<cbtot>);



          Or more generally



max = sys.get_gmax([<CBNAME>,]<cbtot>);




     In most cases, sys.get_gmax() will be used with one argument.
When used this way,
it will work with the current CB.



     Optional arguments are allowed so that you can get grand max vals
without needing to be processing a particular CB.
```

## Arguments

- `<CBNAME>` — The name of the CB that you need to get a max val for.
This is an optional argument.
If it is not passed, then sys.get_gmax() uses the current CB.
- `<cbtot>` — The name of the CB TOT Var to return the grand max val for.
This argument must always be specified.

## Returns

sys.get_gmax() can return alpha, integer or float.
Since any value is valid for a max, there is no way to
return a unique bad value, however sys.get_gmax() will try to
return a bad value when necessary.
A bad return for an alpha is the NULL string, or "".
A bad return for a float is -1.0, and a bad ret for an
integer is -1.
Thus the following may be considered bad returns sometimes,
but they could also be perfectly valid.
- `""` — OR
- `-1.0` — OR
- `-1` — Either `<CBNAME>` or `<cbtot>` is invalid.
- `AnyValue` — The current grand max of the CB TOT Var for specified CB.

## Where Used

`sys.get_gmax()` can be called from anywhere as long as there is an active driver with `<CBNAME>` set appropriately to either CB_DRPROC or CB_DRSEL.

## Example

```text
     The following example gets the current grand max value for the
CB TOT Var sys.pr_syssize for the current CB.



     max = sys.get_gmax(sys.pr_syssize);
```

## Description

`sys.get_gmax()` returns the current max val of a CB TOT Var for a CB EOF Group for a particular CB. This is called the grand max of the TOT Var for the CB. It can be called with 1 or 2 arguments.

If called with 1 arg, the arg is `<cbtot>`. `sys.get_gmax()` will return the current grand max val of the CB TOT Var for the Current CB.

If used with 2 args, the args are `<CBNAME>` and `<cbtot>`. `sys.get_gmax()` will return the current grand max val of the CB TOT Var for the specified CB. You may want to use `sys.get_gmax()` in this manner if you need to access a grand max val of a particular CB outside of the current CB.

Thus, you can get any CB TOT Var grand max val for any currently active CB from any PCL.

4C maintains grand max values for each CB TOT Var that was defined as MAX. The Grand Max Val of a CB TOT Var is the same as the Max Val of the CB TOT Var for the CB EOF Group. This value is updated at the same time that totals are updated. That is, the grand max value is updated after the rcd has been CB Selected and before running the DRSELECT or DRPROC PCL. The grand max vals are never reset to null.

## See Also

[`sys.get_count()`]({{< ref "getcount.md" >}}) [`sys.get_gcount()`]({{< ref "getgcount.md" >}}) [`sys.get_max()`]({{< ref "getmax.md" >}}) `sys.get_gmax()` [`sys.get_min()`]({{< ref "getmin.md" >}}) [`sys.get_gmin()`]({{< ref "getgmin.md" >}}) [`sys.get_tot()`]({{< ref "gettot.md" >}}) [`sys.get_gtot()`]({{< ref "getgtot.md" >}})

Back to Top


