# sys.exit_fldloop()

## Purpose

`sys.exit_fldloop()` exits the current iteration of fields.

## Usage

```text
sys.exit_fldloop();
```

## Arguments

None

## Returns

- `0` — sys.exit_fldloop() always returns 0.

## Where Used

`sys.exit_fldloop()` should only be called somewhere within the 4C fld processing states. This can be anytime after the StartFieldLoop and before the end of the EndFieldLoop.

## Example

```text
/*
     End Fld Loop PCL - Update Files and
     for Add mode, only allow Add of one record



     This call is necessary since 4C will
     keep adding records until user cancels or accepts on first field.



     The sys.exit_fldloop() call will prevent any more rows
     of records from being added.



     Also, no statements following the call the sys.exit_fldloop()
     will be executed.
*/


sys.upd_file(myfile);


if (sys.mode == "Add")
     sys.exit_fldloop();
```

## Description

`sys.exit_fldloop()` will exit the current iteration of the fld loop. The EFldLp PCL will NOT be executed.

The current executing PCL and all nested PCLs will terminate without processing any more statements.

If the program is a scrolling program in Add, Modify, or Delete mode, then no more iterations will be processed. Control will return to the Epage PCL for Modify mode, and to the Spage PCL for Delete and Add modes.

The difference between sys.exit_fldloop and [`sys.end_fldloop()`]({{< ref "endfldloop.md" >}}) is that the EFldlp PCL will be executed for [`sys.end_fldloop()`]({{< ref "endfldloop.md" >}}), and will not be executed for `sys.exit_fldloop()`.

`sys.exit_fldloop()` can be called from the Sfldlp PCL, Efldlp PCL, or any Fld PCL. If it is called from any other PCL, the results are unpredictable.

## Bugs/Features/Comments

4C does not check to see if the program is in a state that allows exiting of the field loop. If you are not, the results are unpredictablre.

## See Also

[`sys.end_fldloop()`]({{< ref "endfldloop.md" >}})

[`sys.exit_field()`]({{< ref "exitfield.md" >}})

[`sys.end_field()`]({{< ref "endfield.md" >}})

[`sys.exit_prog()`]({{< ref "exitprog.md" >}})

[`sys.end_prog()`]({{< ref "endprog.md" >}})

Back to Top

## See Also

- [sys.end_fldloop()]({{< ref "endfldloop.md" >}})
- [sys.exit_field()]({{< ref "exitfield.md" >}})
- [sys.end_field()]({{< ref "endfield.md" >}})
- [sys.exit_prog()]({{< ref "exitprog.md" >}})
- [sys.end_prog()]({{< ref "endprog.md" >}})


