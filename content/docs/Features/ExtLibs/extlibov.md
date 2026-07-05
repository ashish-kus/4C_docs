---
title: "4C External Libraries Overview"
weight: 2
draft: false
---

[4C External Libraries Home]({{< ref "_index.md" >}})
4C allows an application to define external libraries with functions that
are callable from a 4C PCL.
Any application directory can define it's own set of libraries and functions
and can call functions within any library that is in the same XLPROG path.
More than one application can define the same library but library names
should reflect the application that they are defined in.

The system files that are used for defining an external library to an
application are sys.usrfn_hdr and sys.usrfn_det.
Each application directory should have it's own copy of these files.

You can get to the External Library definition program from the main
development menu for any application by following:

Main Menu/Configuration/External Libs & Functions

When calling a function with an External Library the syntax is:

retval = `<LibName>`::`<FunctionName>`(args);

In addition to the `<retval>` returned, which can be any 4C data type,
the function also sets the local system variable, sys_ret, to an integer value.
All external libraries should follow the convention that a positive return
value means there was at least one warning, 0 means success, and a negative
return value implies error.

Since there are valid return vals that may imply error,
i.e. FCJSon::GetInteger()
may return a value of -1 because there was an error or because the integer
value requested really is -1,
the application should always check sys_ret, and possibly call either or
both of sys.get_extfnopt(`<libname>`,"LastError") or
sys.get_extfnopt(`<libname>`,"LastMessage") anytime there is an ambiguous return
value that might indicate error.

The default MessageLevel for a 4C External Library when a 4C program
starts is "1".
This means that error messages from the library are automatically displayed
to the user, but informational messages are not.
The application does have control over this using some system PCLs listed below.

The following system pcls are useful for setting options and getting
information from and about an 4C External Library.

- [sys.get_extfnopt()]({{< ref "../../SysPCLs/getextfnopt.md" >}})
- [sys.set_extfnopt()]({{< ref "../../SysPCLs/setextfnopt.md" >}})

There are several external libraries that are part of the 4cSys application
that are available to all other applications.
They are

- [FCCom]({{< ref "FCCom/_index.md" >}}) - Network/Communications library that allows functionality similar to curl. Most useful for allowing a 4C program to act as a Restful Web Services Client.
- [FCJSon]({{< ref "FCJSon/_index.md" >}}) - Library for parsing and creating JSon objects.
- [FCPdf]({{< ref "FCPdf/_index.md" >}}) - Library for creating PDFs.
