---
title: "4C Bootstraps Change Log"
weight: 1
draft: false
---

## 29 December 2011

Version 5.2.0-00 and higher

- sys.fl.svinfo
- sys.pr.svinfo
- sys.slh.svinfo
- sys.rlinfo.view

## 18 September 2010

Version 4.8.0 and higher

- There are XRef programs show where any file is used in any program.
- The PrFiles program, sys.pr.maint, allows you to view an XRef for the file in the current program.

## 21 July 2009

Version 4.8.0 and higher

- The find utility is improved and allows searching on a single dfield as well as on non scrolling dfields.
- Screen layouts have a category field.
- The SC diff allows you to choose between doing a diff with the installed source or the last checkpointed source.
- There is program that allows you to checkpoint all active mods without any user interaction. It is sc.active.chkpt and is meant to be called with the 4ccl client. It works well with cron so it is easy to checkpoint all mods daily when the system is not in use.
- There is a new program, sys.prog.compare, that allows an easy compare of two programs. It is easy to use this to compare programs in different applications or even on different systems.
- There is a new program, sys.file.compare, that allows an easy compare of two file definitions. It is easy to use this to compare file definitions in different applications or even on different systems.
- There are new xref files, flx_hdr and flx_det to help show unused program files.
- There are new xref files, varx_hdr and varx_det, that help in showing unused local fields and unused pcl local fields.
- The varx_hdr and varx_det xref files are also used to show detailed cross references of where variables are used in programs.
- The main data dictionary program, sys.dd.maint, allows you to see all uses of a data dictionary entry.
- The main data type program, sys.dt.maint, allow you to see all uses of a data type.
- The main program development program, sys.prog.mstr, allows you to show orphan records for a single program.
- The debugger has improved support for filedefs that are not defined in the XLAPP directory.
- The File and Program import programs used by 4C Version Control will prompt to allow import of a changed data dictionary item or a data type item. When allowing import, you need to be very aware that it may affect files and programs other than the ones currently being imported. You may also need to manually recompile files and programs since the bootstraps currently don't know all programs affected by a data dictionary or data type change.

## 02 January 2009

Version 4.6.2 and higher

- The sys.et.fm program allows specifying AUTOCLOSE which automatically closes the external database connection when there are no open files using it.

## 01 November 2008

Version 4.6.1 and higher

- There are some new cleanup programs that allow you to view/delete: Unused File Definitions Unused Data Dictionary Fields. Unused Screen Layouts Orphaned Bootstrap Records
- The bootstraps will prevent you from renumbering the display fields of a program that is being edited by the wpnlsp client.
- There are programs that allow you to copy or delete screen layouts.
- There is a TreeView display available for viewing/changing screen layouts.
- Many of the search programs have been modified to be consistent with other search programs.

## 02 January 2008

- The program generator will work with file definitions that are not in the main application directory. Requires: Server 4.4.6-3 or higher

## 21 November 2007

- The program generator will allow you to specify an asfile name for the main file and to choose whether to fully qualify file variables with the asfile name.
- The sys.prog.mstr has a context menu option to convert a screen program to a panel program. Non scrolling programs can be converted to a Form panel program and scrolling programs can be converted to either ListView or List panel programs.
- sys.prog.mstr and sys.prog.maint both have context menu options for creating default panels. You will be prompted for the type of panels to create.

## 01 July 2007

## 01 May 2007

- There is a System PCLs program on th treeview menu that allows you to show all the system pcls by category, view text or html help for all System PCLs (except those that aren't documented of course), show system PCLs that are not used in the current application, and show a cross reference of programs that use the current selected PCL.
- PCL calls are cross referenced at compile time. There are items on the system treeview menu for viewing the xref info and for viewing System PCL help.
- You can view the xref of a single PCL from the pcl definition program. You can also highlight unused PCLs from the same program. Use the context menu to access these features. Both of these depend on the program being compiled with the current specs. If you make changes to the program specs and the program is not recompiled then the xref info will not be accurate.
- There are more options on the system treeview menu.
- All demo programs have been moved out of the 4cSys application and now exist in the 4cDemo application. Existing installations will need to change the 4CSrvrConfig file if you want to access this application. The XLPROG path will be FC_HOME/demo:FC_HOME/system and the XLDATA path will be FC_HOME/demo/DATA:FC_HOME/demo:FC_HOME/system. The demo directory is overwritten with every 4csrvr install. Do not keep your own programs there.
- In Call/Share, if you don't specify a filename for the sharing file, it will default to the local scratch file.
- There is new image info that can be specified for image screen display field types.

## 28 May 2006

- The device maintenance program, sys.dev.maint1, will allow copying and pasting of one device definition to another. This will not copy the device options. If you want to copy a device definition and all of the device options to a new device definition, use the `<copynew>` button or select copynew from one of the menus.
- The device option maintenance program, sys.do.maint, will allow copy and paste of device options.
- All of the display field maintenance programs will allow shifting of display fields.
- The Call/Share program, sys.psh.maint, will correctly set the `<tofile>` name when the `<fromfile>` name is the program name.


## Additional Notes

maintained since August 2000. Any

only accessible through

program, sys.do.maint,

program, sys.psh.maint,
