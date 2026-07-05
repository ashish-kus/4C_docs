# sys.get_keyno()

## Purpose

`sys.get_keyno()` returns the keyno associated with a field.

## Usage

```text
keyno = sys.get_keyno(<asfile>,[ <field> | <fldcdef> ]);
```

## Arguments

- `<asfile> asfilename` — The asfile that `<field>` is in.
- `<field>` — A field in file `<asfile>`.
or
- `<fldcdef>` — The cdef of a field in `<asfile>`

## Returns

integer `<keyno>`
- `< 0` — Not a key field
- `>= 0` — The key number of the field.
0 ==> Primary key, 1 ==> first secondary, etc..
The keyno returned is 1 less than that defined in the file
definition.

## Where Used

`sys.get_keyno()` can be called from anywhere. It will normally be called so that the keyno can be passed to other system PCLs that expect it. In particular, a DrInit PCL that calls [`sys.seek_key()`]({{< ref "seekkey.md" >}}) should call `sys.get_keyno()` instead of hardcoding the `<keyno>` argument.

## Example

```text
In the system program, sys.prmem.rpt1.1, the DrInit PCL for sys.program
sets the start and end key and then calls sys.seek_key().
sys.seek_key() expects a keynum argument, which is gotten by
calling sys.get_keyno.
Coding it this way allows for the keynum to change if you modify
the file definition.
The relevant code follows:




else {
   sys.pr_name = sys.prm_fromprog;
   sys.set_skey(sys.program,S_PRNAME,MATCH_PARTIAL);
   sys.pr_name = sys.prm_toprog;
   sys.set_ekey(sys.program,S_PRNAME,MATCH_PARTIAL);
   sys.seek_key(sys.program,
               sys.get_keyno(sys.program,sys.pr_name),SEEK_START);
}




The sys.seek_key() statement could also be code as:

   sys.seek_key(sys.program,
               sys.get_keyno(sys.program,S_PRNAME),SEEK_START);




This method is now the preferred method because it is
consistent with the way most other SysPCLs refer to file variables
```

## Description

`sys.get_keyno()` returns the keyno associated with `<field>` in `<asfile>`. This number is the internal representation which is one less than that defined in the file definition. Some system PCLs expect this keyno in this form. Especially [`sys.seek_key()`]({{< ref "seekkey.md" >}}). This PCL replaces the obsolete '$`key_number()`'.

## Bugs/Features/Comments

There is no real check to see if `<field>` is in file, so if it isn't, the results will be unpredictable.

To be consistent with other PCLs that need a `<fldcdef>` it is better to use the `<fldcdef>` than the `<field>` itself.

It is unfortunate that the return does not match the key num field in the file definition.

## See Also

[`sys.seek_key()`]({{< ref "seekkey.md" >}})

Back to Top


