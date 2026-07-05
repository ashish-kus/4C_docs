# sys.get_cdef()

## Purpose

`sys.get_cdef()` returns an the internal identifier of a field that can be used instead of the CDEF for a field in a file.

## Usage

```text
<cdef> = sys.get_cdef([ <asprog>, ] <asfile>,<fieldname>);
```

## Arguments

- `asfile <asfile>` — the asfile name of the file the field is in
- `alpha <fieldname>` — The fieldname to return the CDEF of.
This is always an alpha and is not the field itself,
but the name.
Subscripted names can be used also.

## Returns

integer `<cdef>`
- `>= 0` — The CDEF of the field name.
This is the relative position of the field in the file.
- `< 0` — No such field `<fieldname>` in file `<file>`

## Where Used

`sys.get_cdef()` can be called from anywhere. It is mainly useful in report or screen writers that do not know the fields they are using until run time.

## Description

`sys.get_cdef()` returns an integer that can be used instead of the CDEF for a field in a file. It is not necessary for the field to actually have a CDEF defined. The CDEF of a field is the relative number of the field in the file taking into account dimensioned fields. `sys.get_cdef()` is mainly useful in programs that are used as screen or report writers and do not know all parameters at runtime. The result of `sys.get_cdef()` can be used in system PCLs that need a CDEF parameter.

4C uses the CDEF in some system PCLs to identify the field to act on. This was put in originally because the parameters to the system PCLs could not be variable. There is now a way passing the field name and 4C does not always use the CDEF. However, these PCLs currently have the problem of not being able to use a field with a subscript. This problem will be worked out, and someday ALL system PCLs will be consistent in the way that they use their parameters.

## See Also

[`sys.get_filenum()`]({{< ref "getfilenum.md" >}})

Back to Top


