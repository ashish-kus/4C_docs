# sys.cmp_data()

## Purpose

`sys.cmp_data()` compares all data fields in the field buffers of two different asfiles.

## Usage

```text
ret = sys.cmp_data(<asfile1>,<fldname1>,<val1>,
          <asfile2>,<fldname2>,<val2>);
```

## Arguments

- `asfile <asfile1>` — The asfile name of the first file in the compare.
- `alpha <fldname1>` — An alpha var to return the field name from asfile1
where the compare failed.
- `alpha <val1>` — An alpha var to return the formatted value from asfile1
where the compare failed.
- `asfile <asfile2>` — The asfile name of the second file in the compare.
- `alpha <fldname2>` — An alpha var to return the field name from asfile2
where the compare failed.
- `alpha <val2>` — An alpha var to return the formatted value from asfile2
where the compare failed.
NOTE: The fldname1 and fldname2 variables should be defined
large enough to hold a name and a dimension.
The val1 and val2 variables should be defined large enough
to hold the largest value that you want to see.
If these variables are not big enough, they are
truncated.

## Returns

- `0` — All fields compared ok
- `1` — Compare failed.
The field names and values are stored in
fldname1,fldname2,val1, and val2.
- `-1` — Compare failed because of incompatible data types in compare.
The field names and values are stored in
fldname1,fldname2,val1, and val2.

## Where Used

`sys.cmp_data()` can be called from anywhere.

## Example

```text
The following shows how you can compare all data fields in two
different asfiles with the same file layout.
The two asfiles cm1 and cm2 both use the cust_mstr file
definition.




cm1.cm_code = "IBT001";
sys.read_file(cm1,F_LOOKUP);
cm2.cm_code = "IBT002";
sys.read_file(cm2,F_LOOKUP);
while (1) {
    if ((ret=sys.cmp_data(cm1,fldname1,val1,cm2,fldname2,val2))==0)
        break; /* no more different fields */
    if (ret == -1) {
        sys.err_msg("Incompatible rcd types");
        sys.err_msg("cmp failed",fldname1,val1,fldname2,val2);
        break;
    }
    sys.err_msg("cmp failed",fldname1,val1,fldname2,val2);
    /* make next cmp ok on this fld - may not work if fldname1 fmt ovflow */
    sys.put_fmtfield("cm2",fldname2,val1);
}

The following is another way of doing the same thing, except sys.copy_fields()
is used instead of sys.put_fmtfield()
This is more accurate since sys.put_fmtfield() will not always make
the value of fldname2 equal to the value of fldname1 due to the
value not fitting in the display format.




cm1.cm_code = "IBT001";
sys.read_file(cm1,F_LOOKUP);
cm2.cm_code = "IBT002";
sys.read_file(cm2,F_LOOKUP);
while (1) {
    if ((ret=sys.cmp_data(cm1,fldname1,val1,cm2,fldname2,val2))==0)
        break; /* no more different fields */
    if (ret == -1) {
        sys.err_msg("Incompatible rcd types");
        sys.err_msg("cmp failed",fldname1,val1,fldname2,val2);
        break;
    }
    sys.err_msg("cmp failed",fldname1,val1,fldname2,val2);
    /* make next cmp ok on this fld */
    fldidx = sys.get_cdef(cm1,fldname1);
    sys.copy_fields(cm1,fldidx,cm2,fldidx,1);
}
```

## Description

`sys.cmp_data()` compares each field in two different asfiles until all fields of one file have compared ok or until there is a compare fail. The difference between `sys.cmp_data()` and [`sys.cmp_file()`]({{< ref "cmpfile.md" >}}) is that `sys.cmp_data()` does not compare primary key fields. It is not necessary that the primary key layout of the two asfiles in the commpare be compatible, but the data field layouts must be compatible.

## Bugs/Features/Comments

The values returned in val1 and val2 may not reflect the true value of fldname1 and fldname2 because the values may not fit in the display format.

There is no way to tell if one asfile has more fields than the other.

## See Also

[`sys.cmp_file()`]({{< ref "cmpfile.md" >}})

Back to Top

## See Also

- [sys.cmp_file()]({{< ref "cmpfile.md" >}})


