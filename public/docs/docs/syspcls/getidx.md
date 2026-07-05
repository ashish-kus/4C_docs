# sys.get_idx()

## Purpose

`sys.get_idx()` returns the index into the user table of the current process.

## Usage

```text
<useridx> = sys.get_idx();
```

## Arguments

None

## Returns

- `integer <useridx>` — The index into the internal user info table.

## Where Used

`sys.get_idx()`() can be called from anywhere.

## Description

`sys.get_idx()` returns the index into the internal user table for the current 4C process.

## See Also

[`sys.get_maxusers()`]({{< ref "getmaxusers.md" >}}) [`sys.get_nusers()`]({{< ref "getnusers.md" >}}) [`sys.get_ttyname()`]({{< ref "getttyname.md" >}}) [`sys.get_username()`]({{< ref "getusername.md" >}})

Back to Top


