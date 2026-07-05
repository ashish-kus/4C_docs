---
title: "sys.get_dfcol()"
description: "returns the col number that a particula"
weight: 130
draft: false
---

## Purpose

`sys.get_dfcol()` returns the col number that a particular field is displayed on.

## Usage

```text
col = sys.get_dfcol(<DFLABEL>);
```

## Arguments

- `integer <DFLABEL>` — the unique label id of the display field.
This is in the display field specs and normally is upper case.

## Returns

integer `<col>`
- `> 0` — col number of field.
- `-1` — No current program or illegal DFLABEL

## Where Used

`sys.get_dfcol()` can be called from anywhere and would normally be used to pass a col ofst to another program to help it position itself.

## Example

```text
The sys.fh.maint program uses the following code
to tell sys.prreset.type to position itself in the
same column as FILENAME.




type = sys_prresettype(
         sys.get_dfrow(FILENAME),
         sys.get_dfcol(FILENAME)-1);
```

## Description

`sys.get_dfcol()` returns the col number that a particular field is displayed on. The col returned is the actual col, which may differ from the defined col in the display field definitions. In the case of scrolling programs, the col returned for a multi field corresponds to the col for the current item. For screen programs using `sys.dr_epedit()`, or [`sys.dr_epselect1()`]({{< ref "drepselect1.md" >}}) this item is normally highlighted.

## See Also

[`sys.get_dfrow()`]({{< ref "getdfrow.md" >}}) [`sys.get_linenum()`]({{< ref "getlinenum.md" >}})

Back to Top

## Note

`sys_prresettype()` is a global PCL that pushes sys.prreset.type passing the row and col as alpha strings.

