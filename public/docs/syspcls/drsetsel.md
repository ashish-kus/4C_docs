# sys.dr_setsel()

## Purpose

`sys.dr_setsel()` allows you to set the selection on or off for scrolling items.

## Usage

```text
sys.dr_setsel(<itemidx>,<seltype>[,<selflags>]);
```

## Arguments

- `integer <itemidx>` — An item idx,
absolute linenumber, or one of DR_SELNEXT,
DR_SELPREV, DR_SELFIRST, DR_SELLAST, DR_SELCUR, DR_SELALL.
Item indexes start at 0, line numbers start at 1.
- `integer <seltype>` — one of DR_SELON, DR_SELOFF, or DR_SELNOCHANGE
indicating whether the item should be selected, unselected or left as is.
Specifying DR_SELNOCHANGE is useful when selflags specifies DR_SHOW and
when data for the item may have changed and needs to be displayed.
- `integer <selflags>` — Optional argument.
Currently the flags can be one or more of DR_ABSOLUTE, DR_RELATIVE,
DR_SHOW, DR_FOCUS
If DR_ABSOLUTE is indicated then item index is interpreted as an
absolute linenumber of the item in the scrolling list.
Note that line numbers start at 1, rather than 0.
If DR_RELATIVE (the default) is indicated then the item index is
interpreted as a relative index into the set of selected items.
If DR_SHOW is specified, then 4C will make sure the selected line
is visible, scrolling the list up or down if necessary.
Only the last call to sys.dr_setsel() with DR_SHOW specified will
affect the display.
When a single item is specified, DR_FOCUS makes sure that that item has
been read and is the item that has the focus.

## Returns

- `0` — OK
- `-1` — Error

## Where Used

`sys.dr_setsel()` is normally used when processing a set of records that the user has selected in order to turn off the selection indicating that the item was processed.

## Example

```text
The system programs sys.df.maint1, scf.fm, and scp.fm have
examples of using sys.dr_setsel().
```

## Description

`sys.dr_setsel()` allows you to turn the selection of individual items in a scrolling list on or off. Unless DR_ABSOLUTE is specified 4C works with a set of items that is comprised of the items currently selected when the user pressed an fkey or cmdbtn. Even if you change the selection status of any items in this set, the set itself will not change until another fkey or cmdbtn is pressed by the user.

Requirements

DR_FOCUS requires 4cserver version 6.0.6 or later.

## See Also

[`sys.dr_selcount()`]({{< ref "drselcount.md" >}})

[`sys.dr_readsel()`]({{< ref "drreadsel.md" >}})

Back to Top

## See Also

- [sys.dr_selcount()]({{< ref "drselcount.md" >}})
- [sys.dr_readsel()]({{< ref "drreadsel.md" >}})


