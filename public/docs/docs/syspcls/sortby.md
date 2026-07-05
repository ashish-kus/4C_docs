# sys.sort_by()

## Purpose

`sys.sort_by()` allows you to specify the order that driver rcds are sorted in.

## Usage

```text
ret = sys.sort_by(<asfile>,<fldcdef>,<sorttype>);
```

## Arguments

- `asfile <asfile>` — The asfile name of the file containing the
field to use in the sort.
- `integer <fldcdef>` — The CDefine of the field in `<asfile>` to sort
by.
- `integer <sorttype>` — Either SORT_NORMAL or SORT_REVERSE.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — No current driver, or current driver not in DRINIT state.

## Where Used

`sys.sort_by()` can be called ONLY from the DrInit PCL. It always applies to the current driver. It makes no difference where during the DrInit PCL that `sys.sort_by()` is called.

## Example

```text
The following
code is from the drinit() PCL in the an.call.de.sel program in
the tutorial application.




sys.sort_by(call_hdr,CH_DATE,SORT_REVERSE);
sys.sort_by(call_hdr,CH_TIME,SORT_REVERSE);
```

## Description

`sys.sort_by()` causes driver rcds to be sorted by the field specified in the `sys.sort_by()` statement. Multiple sys.sort_by statements can be used to sort by more than one field. The first `sys.sort_by()` statement specified has highest priority. If the field to sort by is not in the driver file, then it must be set in the DrSel PCL, possibly by reading another file.

## See Also

[`sys.dr_init()`]({{< ref "drinit.md" >}}) [`sys.dr_include()`]({{< ref "drinclude.md" >}})

Back to Top


