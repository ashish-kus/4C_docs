---
title: "sys.get_linenum()"
description: "returns the current line number"
weight: 161
draft: false
---

## Purpose

`sys.get_linenum()` returns the current line number.

## Usage

```text
linenum = sys.get_linenum();
```

## Arguments

None

## Returns

- `integer linenum` — the current line number of the device being used by the
current program.

## Where Used

`sys.get_linenum()` can be called from anywhere. It will often be used to be able to pass a row ofst to a pushed program.

## Example

```text
     The following example is from the tutorial program md.fm.
In the callhelp() PCL, it uses sys.get_linenum() to be able
to pass a row ofst to mhp.fm.



push_prog("mhp.fm",itoa(sys.get_linenum()),"40");



NOTE: push_prog() is a global PCL in the tutorial directory.
```

## Description

`sys.get_linenum()` returns the current linenum of the currnt page of the device that the current program is printing on. This is meant as a replacement of the PCL "`sys.line_number()`". The reason for adding this PCL is that `sys.line_number()` sounds more like a variable name than a PCL. I think that by using PCLs that sound like verbs they are easier to remember. `sys.line_number()` will still work as before, but I would suggest using `sys.get_linenum()` instead.

The current line number is defined as the last line that was used to print a field.

## Bugs/Features/Comments

If no fields have been printed on the current page, then `sys.get_linenum()` will return 0.

## See Also

[`sys.get_pagenum()`]({{< ref "getpagenum.md" >}}) [`sys.get_linediff()`]({{< ref "getlinediff.md" >}}) [`sys.get_pagediff()`]({{< ref "getpagediff.md" >}})

Back to Top

