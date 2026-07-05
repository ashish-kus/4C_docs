# sys.end_fldloop()

## Purpose

`sys.end_fldloop()` ends the current iteration of fields.

## Usage

```text
sys.end_fldloop();
```

## Arguments

None

## Returns

- `0` — sys.end_fldloop() always returns 0.

## Where Used

`sys.end_fldloop()` should only be called somewhere within the 4C fld processing states. This can be anytime after the StartFieldLoop and before the end of the EndFieldLoop.

## Example

```text
/*
     End Fld PCL for atype - if atype == 'A' then
     don't process any more fields



     The sys.end_fldloop() call causes control to go
     straight to the Efldlp PCL
     without processing any more fields.



     We could also have set sys.next_field = 9999 and then called
     sys.exit_field().
     The only difference would be if this were a scrolling program,
     then no more iterations would be processed either.
*/


if (atype == "A")
     sys.end_fldloop();
```

## Description

`sys.end_fldloop()` will end the current iteration of the fld loop. The EFldLp PCL WILL be executed.

The current executing PCL and all nested PCLs will terminate without processing any more statements.

If the program is a scrolling program in Add, Modify, or Delete mode, then no more iterations will be processed. Control will return to the Epage PCL for Modify mode, and to the Spage PCL for Delete and Add modes.

The difference between `sys.end_fldloop()` and [`sys.exit_fldloop()`]({{< ref "exitfldloop.md" >}}) is that the EFldlp PCL will be executed for `sys.end_fldloop()`, and will not be executed for [`sys.exit_fldloop()`]({{< ref "exitfldloop.md" >}}).

`sys.end_fldloop()` can be called from the Sfldlp PCL or any Fld PCL. It cannot be called from the Efldlp PCL because it will cause looping. If it is called from any other PCL, the results are unpredictable.

## Bugs/Features/Comments

4C does not check to see if the program is in a state that allows ending of the field loop. If you are not, the results are unpredictablre.

## See Also

[`sys.exit_fldloop()`]({{< ref "exitfldloop.md" >}})

[`sys.exit_field()`]({{< ref "exitfield.md" >}})

[`sys.end_field()`]({{< ref "endfield.md" >}})

[`sys.exit_prog()`]({{< ref "exitprog.md" >}})

[`sys.end_prog()`]({{< ref "endprog.md" >}})

Back to Top

## See Also

- [sys.exit_fldloop()]({{< ref "exitfldloop.md" >}})
- [sys.exit_field()]({{< ref "exitfield.md" >}})
- [sys.end_field()]({{< ref "endfield.md" >}})
- [sys.exit_prog()]({{< ref "exitprog.md" >}})
- [sys.end_prog()]({{< ref "endprog.md" >}})


