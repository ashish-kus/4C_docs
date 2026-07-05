# toupper()

## Purpose

`toupper()` converts any lower case letters in an alpha variable to upper case.

## Usage

```text
aret = toupper(<avar>);
```

## Arguments

- `alpha <avar>` — The alpha variable to convert.

## Returns

- `alpha <aret>` — The converted alpha.

## Where Used

`toupper()` can be called from anywhere.

## Example

```text
In the file/field definition program sys.fd.maint, toupper() is
used to construct the CDefine.
When the <user4> key is pressed, the PCL setcdef2() is called.
The code from setcdef2() follows:




/*
    Set up a CDEF
*/
len = strlen(sys.fd_fieldname);
sys.fd_cdef = "";
for (i = 0; i < len; i+=1) {
    if (sys.fd_fieldname(i,i) == ".")
        sys.fd_cdef(i,i) = "_";
    else
        sys.fd_cdef(i,i) = toupper(sys.fd_fieldname(i,i));
}
```

## Description

`toupper()` translates an alpha variable by converting all lower case letters to uppercase. All other characters are left untouched. The converted alpha is the return value of `toupper()`. The original alpha is left unchanged unless it is specified as `<aret>`.

## See Also

[`tolower()`]({{< ref "tolower.md" >}}) [`isdigit()`]({{< ref "isdigit.md" >}}) [`islower()`]({{< ref "islower.md" >}}) [`isupper()`]({{< ref "isupper.md" >}})

Back to Top


