# sys.open_ldata()

## Purpose

`sys.open_ldata()` opens a connection to linked data.

## Usage

```text
ret = sys.open_ldata(<ldname>,<ldkey>,<field>,<flags>[,<opt> ...]);
```

## Arguments

- `<ldname>` — an alpha var that can be used in subsequent calls to.
sys.get_ldata()
,
sys.set_ldata()
, and
sys.close_ldata()
- `<ldkey>` — The key to the s_ldatah file.
- `<field>` — Any type of field.
This is the field in the 4C application that will be used
for importing and exporting the data.
When data is imported, this field will have the value
of the imported data.
When exporting data,
the value in this field is formatted and exported to
the external application.
- `<flags>` — can be combinations of:
- `LD_ONETIME` — Link to this data once only and either.
Get or Set the data and close the connection
immediately.
If you use LD_ONETIME, you do not need to call sys.close_ldata().
- `LD_AUTOMATIC` — This will automatically update the data in the
4C application without the application needing to call sys.get_ldata()
explicitly.
This is the default if neither LD_ONDEMAND or LD_AUTOMATIC are
specified.
- `LD_ONDEMAND` — Opposite of LD_AUTOMATIC.
This instructs 4C to send data to the 4C application only
when it explicitly asks for it with sys.get_ldata().
- `LD_GET` — Tells 4C that this LData is to be read from the
external process.
It is OK to use LD_GET and LD_SET together.
If neither LD_GET or LD_SET is specified, then LD_GET
is assumed.
When LD_ONETIME is set along with LD_GET, then
sys.open_ldata() call does not return until the the
data is retrieved from the external application.
- `LD_SET` — Tells 4C that this LData will be written to the
external application.
When LD_ONETIME is set along with LD_SET, then
sys.open_ldata() call does not return until the the
data is written to the external application.
- `LD_DEFAULT` — With no other flags, implies
LD_AUTOMATIC|LD_GET.
- `<opts>` — Alpha vars of the form "App=`<app>`"
Multiple opts can be specified together by separating
different options with a comma.
Ex.
"App=`<app>`,Topic=`<topic>`".
The last 12 parameters can all be used for specifying these
options.

## Returns

- `0` — Success.
-1 = Failure and sys.errno will be set.

## Where Used

`sys.open_ldata()` can be called from anywhere. For system wide LData connections that need to stay open, you will probably want to start this in a daemon process.

## Example

```text
There is a program in the bootstrap directory that
you can look at to see how a connection to a spreadsheet
may be set up.
The program ldata.tst.1 links 10 different SysScratch 4c fields to
10 different cells in the spreadsheet /test/xx.xls.
It uses the "testdde" record in the s_ldatah fileh.
If you use this example, you will need to modify at least,
the sldh_server and sldh_topic fields for the "testdde" rcd.
```

## Description

Use `sys.open_ldata()` to open LData connections with external processes. The LData connection will remain open for as long as `<field>` is in memory. If it is not in a SysScratch file, and the program that has this field in memory exits, then the LData connection is closed automatically. Onetime LData links are automatically closed after the `sys.open_ldata()` call. You can explicitly close an open LData connection using

[`sys.close_ldata()`]({{< ref "closeldata.md" >}})

## Bugs/Features/Comments

You cannot specify more than one item/field in a `sys.open_ldata()` call. This makes startup of a connection with many items slow. If this is a problem, I will look for a way around it.

## See Also

[`sys.get_ldata()`]({{< ref "getldata.md" >}})

[`sys.set_ldata()`]({{< ref "setldata.md" >}})

[`sys.close_ldata()`]({{< ref "closeldata.md" >}})

Back to Top

## See Also

- [sys.get_ldata()]({{< ref "getldata.md" >}})
- [sys.set_ldata()]({{< ref "setldata.md" >}})
- [sys.close_ldata()]({{< ref "closeldata.md" >}})


