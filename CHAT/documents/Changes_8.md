---
title: "4C Version Control Change Log"
weight: 1
draft: false
---

## 28 February 2006

1. The source code control bootstrap programs will no longer allow you to reedit an installed program, file, or layout on the same mod. Reedit can still be used to reedit a completely unedited program, file, or layout.
2. The source code control bootstrap programs will no longer allow you to delete the sc_prog, sc_file, or sc_slhdr rcd for an installed program, file, or layout. You can still delete the rcd corresponding to a completely unedit program, file, or layout.

## 09 October 2005

1. Screen layouts are now part of source code control. They get stored in the SL subdirectory of XLEXP. You will need to create the files sc_slhdr and sc_slcmnt before you can add layouts to a mod.

## 07 September 2005

1. There is a better way of moving mods between systems and and applications. See: [4C Remote Mod Imports]({{< ref "rmodimport.md" >}})

## 18 August 2004

1. xlimport sets the sys.fh_schnum and sys.pr_schnum vars correctly. This makes it possible to xlimport files and programs that are being edited without losing the ability to edit the program or file. Please note, that if you use xlimport to import files or programs, the version control VersionFile is not imported.
2. The program copy and file copy programs will correctly set sys.pr_schnum and sys.fh_schnum.
