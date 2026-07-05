# sys.dr_readsel()

## Purpose

`sys.dr_readsel()` reads the record in the driver file corresponding to an item in a scrolling list.

## Usage

```text
sys.dr_readsel(<itemidx>[,<flags>]);
```

## Arguments

- `integer <itemidx>` — An item idx,
absolute linenumber, or one of DR_SELNEXT,
DR_SELPREV, DR_SELFIRST, DR_SELLAST, DR_SELCUR.
Item indexes start at 0, line numbers start at 1.
- `integer <flags>` — Optional argument.
Currently the flags can be one of DR_ABSOLUTE or DR_RELATIVE along
with 0 or more of DR_SHOW and DR_FOCUS.
If DR_ABSOLUTE is indicated then item index is interpreted as an
absolute line number of the item in the scrolling list.
Note that line numbers start at 1, rather than 0.
If DR_RELATIVE (the default) is indicated then the item index is
interpreted as a relative index into the set of selected items.
Specifying DR_SHOW will make sure that the item is visible in the list.
If necessary the list will scroll so that the item is visible
When DR_FOCUS is set, it makes sure that that item has the focus.

## Returns

- `0` — OK
- `-1` — Error

## Where Used

`sys.dr_readsel()` is normally used when processing a set of records that the user has selected.

## Example

```text
The system programs sys.df.maint1, scf.fm, and scp.fm have
examples of using sys.dr_readsel().
```

## Description

`sys.dr_readsel()` allows the application process selected items from a scrolling list.

Requirements

DR_SHOW and DR_FOCUS require 4cserver version 6.0.6 or later.

## See Also

[`sys.dr_setsel()`]({{< ref "drsetsel.md" >}})

[`sys.dr_selcount()`]({{< ref "drselcount.md" >}})

Back to Top

## See Also

- [sys.dr_setsel()]({{< ref "drsetsel.md" >}})
- [sys.dr_selcount()]({{< ref "drselcount.md" >}})


