---
title: "4C Version Control"
weight: 3
draft: false
---

Version 2.3 of June 1994 implements version control for 4C file
and program specifications.
Using 4C Version Control, you can:

1. Archive individual program or file specifications in either RCS or SCCS format.
2. Maintain a record of changes made to program or file specifications.
3. Compare 2 versions of program or file specifications.
4. Backup to an earlier version of a program or file.
5. Checkpoint Current changes.
6. Install changes to a program or file specs.
7. Document changes made to program or file specs.

4C Version Control does not try to allow everything that SCCS or RCS
may allow.
In particular, branching off is not supported.
4C Version Control works in a linear fashion, using a release number
and a level number.
This will be explained in detail later.

---

## 4C Version Control - Requirements

In order to use 4C Version Control, you need:

1. Either SCCS or RCS. Most SystemV implementations include SCCS as part of Unix development. RCS can be gotten from the Free Software Foundation (FSF) and is included in the 4C distribution tape. Please read the accompanying licence agreement from the FSF.
2. Support for long filenames. The name of the stored files will be program or file name + 2 characters.
3. The utility programs sed, diff, and awk. FSF implementations of theses utilities will be included at a later date.

---

## 4C Version Control - Setting Up

4C Version Control is implemented on a per directory basis.
Each 4C specification directory can be set to use or not
use version control.
Each directory can also independently specify whether to use
RCS or SCCS.
In addition, for each directory that uses version control,
specific categories can be disabled from using version control.
In order to start using 4C Version Control, do the following
for each 4C spec directory you wish to use version control with.

1. Make sure that a sys.config file exists in the 4C Spec directory. If one does not, create it with the following command: xlcr -f sys.config -n `<4cDir>`
2. Run the program sys.conf.fm. This can be run from the System Environment menu. Enable version control by specifying "y" at the enable prompt and then specify either RCS or SCCS for version control type.
3. Select the categories that you want to disable version control for. Typically, a category such as tmp would be disabled from using version control. Set sys.catg_ignsccf to "y" for these categories by running the sys.catg.maint program from the environment menu.
4. Make sure that the RCS or SCCS binary programs are in your search PATH.
5. Make sure that the XLEXP environment variable is set and exported. This should be set to the directory name where the 4C specs are to be exported. It can be set to your 4C spec directory, or another directory. In any case, there will be more directories created below this one to store the RCS or SCCS files. You should make sure that there will be plenty of space to hold the exported programs and files. Initially, the amount of space needed will be less than that needed by the 4C specs in JISAM format. However, as changes are made and saved, the amount of space needed will increase.
6. Create the Version Control Bootstrap files. These MUST exist in your 4C Spec directory. If they do not, then you will be adding records to the ones in the bootstrap spec directory. These will most likely be overwritten the next time the bootstrap programs are installed. The following commands will create the files you need: `xlcr -f sc_cntl -n `<4cDir>` xlcr -f sc_hdr -n `<4cDir>` xlcr -f sc_prog -n `<4cDir>` xlcr -f sc_file -n `<4cDir>` xlcr -f sc_slhdr -n `<4cDir>` xlcr -f sc_prcmnt -n `<4cDir>` xlcr -f sc_flcmnt -n `<4cDir>` xlcr -f sc_slcmnt -n `<4cDir>``
7. Export All your file definitions and program definitions to create the initial RCS or SCCS files. This is done by running the program sc.file.create for files, and the program sc.prog.create for programs. This should only be done once for each program or file. You can export all programs or files at once, or by category name. Exporting all programs can take a bit of time. The 2 export programs are on the SC Utility program menu.
8. Verify that the exports worked. This can be done by looking in the file $XLEXP/PROGRAM/SC/scm00000 after the export is done. The sc.file.create and sc.prog.create programs will prompt if you want to see this output. In the case of problems, you can remove the directories $XLEXP/PROGRAM and $XLEXP/FILE and start all over. It is probably a good idea to try this on 1 or 2 files and 1 or 2 programs before exporting an entire category. It is possible to get warnings about a fldsep found in a file. This will happen if any of your alpha fields have an embedded CntlA in them. In doing the export, when this is found, the character is changed to a question mark in the exported file. You can check for these ahead of time using xlflgrep with the -U option. If you expect to leave an overnight export, this is a good idea. The file I have found the most CntlAs in has been sys.dpy_field. They also seem to exist in sys.pcl_stmt, due to the old xled program allowing you to type them. So at the very least, run the commands: `xlflgrep -f sys.dpy_field -m "^A" -r "" -G -U xlflgrep -f sys.pcl_stmt -m "^A" -r "" -G -U NOTE: the first quoted string is literally doublequote CntlA doublequote` The CntlA may or may not echo when typed. For most shells, the way you type the CntlA is by pressing CntlV then CntlA.

Assuming all went well, you can now use the 4C Version Control system.
It will probably be helpful to familiarize yourself with the files
used by 4C version control as well as the files
in the directories beneath $XLEXP/PROGRAM and $XLEXP/FILE first.

---

## 4C Version Control - Files

The following files are used by the Version Control System and are
regular ISAM files.

1. Uses one rcd with key "SC" to maintain next mod#. This rcd will be created if it does not exist, the first time you add a mod.
2. The Modification header file. Each sc_hdr corresponds to one 4C modification. A modification will typically involve multiple programs and files.
3. The program detail rcds for a particular modification There can be 0,1 or many sc_prog rcds per 4C mod.
4. Detailed comments for a particular program for a particular 4C mod.
5. The file detail rcds for a particular modification There can be 0,1 or many sc_file rcds per 4C mod.
6. Detailed comments for a particular file for a particular 4C mod.
7. The screen layout detail rcds for a particular modification There can be 0,1 or many sc_slhdr rcds per 4C mod.
8. Detailed comments for a particular screen layout for a particular 4C mod.

In addition to these files, the following sequential files and
directories are also used.

1. The 4C work directory for checked out RCS or SCCS program specs.
2. The directory where the SCCS files are created for program specs.
3. The directory where the RCS files are created for program specs.
4. The 4C work directory for checked out RCS or SCCS file specs.
5. The directory where the SCCS files are created for file specs.
6. The directory where the RCS files are created for file specs.
7. The directory of output files for all SCCS or RCS cmds executed for a particular mod. Files in this directory will have a name scmNNNNN where NNNNN refers to a mod#. These files can be viewed with a regular text editor.

---

## 4C Version Control - Work & Version Files

4C uses a shell script to facilitate all
RCS commands and SCCS commands.
The shell script used for RCS is 4cRcs,
and the shell script used for SCCS is
4cSccs.
Both shell scripts take the same arguments,
and both are located in the XLBIN directory.
These shell scripts will not be documented in detail
since all calls to them are thru 4C bootstrap programs.

4C creates a WorkFile thru
sc.file.create.1 or sc.prog.create.1.
This WorkFile is a sequential file with
all of the 4C spec records for 1 file or 1 program in it.
It is with the WorkFile,
that RCS and SCCS can work.
They cannot work directly on the 4C bootstrap files.
Currently, none of the help or documentation rcds associated
with a file or program are stored in the WorkFile.

When doing the initial file or program export,
or when doing an install on a new program or file,
a VersionFile is created from the WorkFile.
The VersionFile is the file found in the RCS or
the SCCS subdirectories.
The VersionFile stores all changes to the WorkFile
as well as appropriate comments regarding changes.
It is not necessary to know anything more about the
VersionFile.
However, the RCS or SCCS documentation can
be read if you want a better understanding of them.

The VersionFile is kept always,
but 4C does not need the WorkFile.
It is normally removed by the 4cRcs or 4cSccs shell script.
It can also always be recreated from the 4C specs
if it is being modified,
or from the VersionFile if it is not checked out.

4C Still runs off of the bootstrap files when
running programs,
compiling programs,
or modifying programs.
The VersionFile is only used for maintaining the changes to
a program or file.
The current version is always in the bootstrap files.

---

## 4C Version Control - CheckOut

In order to modify a program or file definition now,
it must be checked out from RCS or SCCS.
You check out a program or file by adding it to the
appropriate mod.
4C then calls the correct script file to check it out from SCCS or RCS
and lock it.
Another term for checked out is edited.

When a program is checked out,
you can modify it as always.
Your changes are reflected immediately in the 4C spec files,
but they are not reflected in the VersionFile until
you install them.
Once a program or file mod is installed,
you have a permanent rcd of them.
You can always go back to an earlier installed version of
a file or program if necessary.

When a program or file is checked out,
no one else can check it out until it has been
installed or unedited.
This is accomplished by storing the mod# in the
appropriate sys.program or sys.file_hdr rcd.
No program or file with a mod# set can be added to another mod.

Each mod allows a single line comment to indicate the
general reason for the mod.
In addition, each program or file on the mod
allows multi line comments documenting the change.
These comments are useful when running the mod reports.

---

## 4C Version Control - Installing Changes

A program or file can be installed when the entire mod is installed
or individually.
In either case,
installing involves creating the WorkFile
and then calling the appropriate shell script to
to update the VersionFile from the WorkFile
and to unlock the VersionFile.
The comments for each prog or file as well as the mod#
and the mod comment are stored in the VersionFile also.
This is accomplished thru bootstrap programs.
All that you need to do is press the appropriate
function key.

---

## 4C Version Control - Checkpoints

It is possible to save changes to your
program or file specs temporarily.
This is done by checkpointing the file or program,
or an entire mod.
Only a program or file that is checked out can
be checkpointed.
When you checkpoint a file or program, 4C
creates the WorkFile from the bootstrap specifications.
It then renames this WorkFile to be ~programname or
~filename.
It is necessary to do this since there are other
times that the WorkFile is created and removed.
While working on a mod, it is always possible
to back out changes to a file or program
to the last checkpoint.
When you first add a program or file to a mod,
it is checkpointed automatically.
Every time you create a new checkpoint,
you lose the last checkpoint for that file or program.
Checkpoints are temporary,
Installs are permanent.

---

## 4C Version Control - UndoingChanges

4C Version Control gives you several ways
to backout changes.

1. For a program or file being edited, you can back out ALL changes to that file or program. This gets the previous version of the program or file from the VersionFile and imports it into the 4C spec files. This is called unediting. Unediting also unlocks the VersionFile and sets the mod# to blank in the sys.file_hdr or sys.program rcd. You can only unedit a program or file that is checked out and that has a VersionFile. If this is a new file or program, the VersionFile will not exist yet. Unediting is accomplished by specifying ALL changes to the undo dialog. If a program or file is unedited, it can be reedited, or deleted from the mod.
2. You can undo changes on an edited program or file up to the last checkpoint also. This is also done thru the undo dialog. Undoing changes up to a checkpoint does not unedit the program or file. You can continue making changes to it.
3. Lastly, you can undo changes to a file or program by getting an earlier installed version of the file or program. In order to do this you MUST: Make sure the file or program is currently edited. Call up the GetOld dialog and select the version that you want to get. The file or program will remain edited until you install or unedit it. Install it. This will create a new version and will not delete any of the other installed versions.

---

## 4C Version Control - Guide Lines

4C Version Control is not fool proof.
You can bypass the controls and defeat the purpose of using
it.
By following a few simple guidelines,
you should have no problems with it.

1. Either always use Version Control or never use it. Do not turn it off and then back on again.
2. Do not use xlexport and xlimport to move programs between systems that are using Version Control. You can use xlexport and xlimport to move programs from systems using Version Control to systems not using Version Control. Instead, use the Mod Export utility from the SC Utility menu to export INSTALLED mods from one system, and use the scimport shell script to import them on the other system. This is documented in detail elsewhere. Another alternative to xlexport and xlimport is to set up and use Remote Mod Imports. This is documented elsewhere. In the Cl/Srvr version 4.0.4 and higher, you can use xlimport on systems using Version Control, but this should only be done when you do not need to import the VersionFile.
3. If you must use any 4C utility program to make changes to the bootstrap files, make sure that you put those files or programs on a mod by building a mod list and then importing that list to the appropriate mod. This can be useful especially when xlflgrep is used to make many changes. Using the mod list build and mod list import is documented elsewhere.
4. Do not use the copy or copy/paste utilities to copy any of the main hdr files (Characteristics: sys.program, sys.file_hdr, sl_hdr) to a program/file/layout that is being edited. You can copy to programs/files/layouts that are not being edited and then add them to a mod. In the Cl/Srvr version 4.0.4 and higher, you can use program and file copy on systems using Version Control, but this should only be done when you do not need to copy the VersionFile.
5. Do not delete the program/file/layout main hdr rcd for a program/file/layout that is being edited. If you must do, this, you should first unedit (Undo All) the file/program/ layout.
6. REMEMBER: Changes that are made but not ever put in the VersionFile WILL GET LOST.

---

## 4C Version Control - Mod Export

Installed mods can be exported to a single export file.
Multiple mods can be exported to the same export file
as long as the export is done at the same time.
Once a mod is exported,
it can be imported on another system.
It is not necessary that both systems be using RCS
or both systems be using SCCS.
They can be mixed.
In order to export 1 or more INSTALLED mods,
do the following:

1. Run sc.mod.exp from the SC Utility Menu.
2. Select installed mods by date and edit the list if you like.
3. Enter the name of the sequential file to export the mods to. If the file exists, you must clear it or select another file.
4. Enter "y" at the "Are you sure prompt".

This will create a sequential file with the following information.

1. 1 line indicating if the VersionFiles are in SCCS or RCS format.
2. All VersionFiles for program specs and file specs. Each VersionFile is preceded by a ProgramStart or FileStart record and is followed by a ProgramEnd or a FileEnd record. This will be the bulk of the file.
3. FileStart records indicating the beginning of a VersionFile for a file. The FileStart record indicates the file name, the lowest version num exported, and the mod# of with that version of the file.
4. FileEnd rcds indicating the end of 1 file VersionFile.
5. ProgramStart records indicating the beginning of a VersionFile for a program. The ProgramStart record indicates the program name, the lowest version num exported, and the mod# of with that version of the program.
6. ProgramEnd rcds indicating the end of 1 program VersionFile.
7. The VersionFiles are followed by the sc rcds that make up the mods exported.
8. Next are ImpFile and ImpProgram records. These indicate program or file name, version to import, and the mod# that they were exported from.

This mod export file can be viewed with a normal text editor,
but it does have control characters in it, so it must
be treated as a binary file when transfering it to other systems.

Usually it is possible to use different export files for each
mod, but if two different mods both have programA and programB
and 1 of them installed programA first and the other
installed programB first, then those 2 mods must be exported
together.
All mods exported to the same export file must be imported
at the same time.
There is no way to separate them.

From either sc.fm.active or sc.browse you can export a single
mod.

---

## 4C Version Control - Mod Import

Once you have moved the mod export file to another system
it can be imported using a shell script, scimport.
For a list of options type:

```text
scimport -help
```

The easiest way to use scimport is to first make sure
that the env vars XLLIB and XLTMP are set correctly.
XLTMP will default to /tmp if not set but there is no
default for XLLIB.
XLLIB should be set to the directory with all of the sc shell scripts,
usually /usr/4c/lib.
If the mods in the mod export file were installed and
should be added to a new mod on the system they are being imported
to then just enter the following cmd:

```text
scimport `<mexpfile>`
```

---

## 4C Version Control - Multiple Machines

I will now describe two scenarios for maintaining your 4C source
on multiple machines.
Both will work.
The first is what I call a master/slave method.
Using the master/slave method, 1 machine is designated the
master and all others are slaves.
To use this method, do the following:

1. Designated 1 machine the master.
2. Make sure that the source on the master is current and that all of it is in SC Installed format.
3. When a source code change needs to be made, create a new mod on the master machine, and add the appropriate files and programs to the mod. You can add comments at this point.
4. DO NOT CHANGE ANY PROGRAM or FILE on the master machine.
5. From sc.fm.active, export this mod only. The source that is being exported is the source in the version file, not the source in the isam files. That is why it is necessary to avoid making changes on the master machine.
6. Move the newly created export file to the slave machine.
7. Import the mod onto the slave machine using the following cmd: `scimport -merge `<mexpfile>`` The -merge option will prevent the imported mod from being installed. Since no mod# was specified, scimport will create a new mod on the slave machine.
8. Make all source code changes on the slave machine.
9. Add all comments to the sc files on the slave machine. Once a program or file is in a mod on the slave machine, you should only add comments on the slave machine. Initial comments can be done on the master machine at the time the program or file is added to the mod.
10. When your mod is complete, install it on the slave machine.
11. Export the Installed mod from the slave machine to a new mexpfile.
12. Move the mexpfile to the master machine.
13. Import the mod onto the master machine with the following cmd: `scimport -overwrite -mod <mod#> `<mexpfile>`` You MUST specify the same mod# that the mod was created with on the master machine. If this mod# is specified wrong, then the integrity of the master machine is compromised. This mod will not yet be installed on the master.
14. Next, run 4C and compile the files and progs in your mod.
15. Lastly, install your mod.

While working on the mod on your slave machine, you will probably
need to add additional files or programs to the mod.
The following steps will allow you to do this.

1. Go back to the master machine and add the files or programs to your mod.
2. Re export the mod.
3. Move the `<mexpfile>` to the slave machine.
4. Import the mod with the following cmd: `scimport -merge -mod <mod#> `<mexpfile>`` It is absolutely imperative that you specify merge and the mod# of the mod on the SLAVE machine. Since you specified merge, the programs or files that are already on your mod will not be imported. Only programs or files that are not on your mod will be imported.

Using this method, there is a problem with unediting and
re exporting.
UNTIL the problem is fixed, if you need to unedit a program/file or
mod, you MUST do so on both the slave and on the master.
You should also delete any program or file rcds
that have been unedited from both machines.
If you need to add the program/file after unediting and deleting,
do so as described above.

This method of source code control should be used where
you may have many programmers and the probability of
multiple programmers wanting to change the same source
is high.
The disadvantages of using this method of controlling source
on multiple machines are:

1. It is awkward, requiring you to always have access to the master machine.
2. It requires you to remember the mod#, which is probably different on two different machines and to specify the correct one when doing your imports.
3. If the above rules are not followed exactly, you will compromise the integrity of your source.

The advantages of using this method of controlling source
on multiple machines are:

1. You avoid any possibility of conflict since everyone will always check out src from the master machine before modifying it.

The other method I will call the multiple master method.
In this method all machines have equal status as masters.
In order to use this method, do the following:

1. Make sure that ALL Machines have a current copy of the source and it has ALL been installed into SC format.
2. When you want to make a source code change, create a new mod on your local machine. Make all changes on your local machine, including sc comments and unediting and re-editing.
3. When you are done, install your mod on your local system.
4. Export your mod to an `<mexpfile>`. You can do the export from sc.browse, or from sc.fm.active. Exporting from sc.fm.active must be done immediately after the install, but you can export from sc.browse anytime. You MUST ONLY export INSTALLED mods.
5. Move the `<mexpfile>` to ALL of the other machines and import it with the following command: `scimport `<mexpfile>`` You should pay attention to any warnings and errors. It is possible, that someone else may have been modifying the same source. If you get warnings or errors you MUST check them manually before you continue installing. The mod will not necessarily have the same mod num on each machine.
6. Once you import the mod in this way, the programs and files have been installed, but the mod itself has not. Run 4c and compile your changes and then install the mod.

This method of source code control can be used where
there are not a lot of programmers and the probability of
conflicts is low.
The disadvantages of using this method of controlling source
on multiple machines are:

1. If there are many machines, the logistics of distributing the mod export files to all of them is cumbersome.
2. The history of mods may look different on different machines depending on the order mod export files are imported.
3. Conflicts are possible and must be resolved.

The advantages of using this method of controlling source
on multiple machines are:

1. It is easy.

If you use this method,
it probably is a good idea to designate 1 Machine the master master
and periodically update all machines from this one.

You can mix the two methods of source code control for
multiple machines as long as for any one mod you follow the
rules for the style you are using.
You must NOT mix the two styles for the same mod.

---

## 4C Version Control - Remote Mod Imports

Another method of moving mods between machine/apps
is to use
[4C Remote Mod Imports]({{< ref "rmodimport.md" >}})
You will still need to have a concept of Master and slave machines
and understand what to do when conflicts occur,
but it is much easier to use.

---

## 4C Version Control - Mod Import Conflicts

Following is a list of possible conflicts or errors
that you can get while running scimport and how to resolve them.
If you get warnings,
you will be allowed to save the warnings and
you will be prompted to continue
or not before any of your source is modified.
This gives you a chance to quit the scimport and determine
whether the warnings are significant or not.
You can run scimport multiple times on the same export file
without modifying your system just by answering no to the
continue prompt or the Import SC files prompt.
Even after importing the SC files, you
can avoid changing your source by answering no to the
Import/Install Mods? prompt.
If you Import the SC files, but not the mods,
you should delete the SC file rcds for the mods just added.

If you get fatal errors, scimport will not even give you the
choice of continuing or not.
You must find a way to correct the errors before you can import
the mod.

1. There is always the possibility of permission problems and if you run into these the messages should make the solution obvious.
2. WARNING: No Changes for <rel.lvl> WARNING: Possible Duplicate Import means that for the current file or program, there are no changes between the current version and the version being imported. It is possible that no changes were made or that this mod has already been imported. This message will not occur if you are importing with the merge option since it is expected that there would not be any changes yet.
3. WARNING: Common Starting Pnt Found at: <r1.l1> NOT <r2.l2> WARNING: Import will undo <r2.l2> to <r1.l1> means that there were changes on the system being imported to that are not reflected in the system being imported from. If you get this message, you should verify whether or not you want to import the mod or not. You could be undoing someone elses changes that are important.
4. WARNING: No Common Starting Point - Possible Name Conflict means that there is no version of the file/prog on the system being imported to that corresponds to any version of the file/program on the system being imported from. It is possible that 2 programmers created a new file/prog with same name and entirely different meaning. You should verify that you want to import this file/prog before allowing scimport to continue.
5. FATAL ERROR: `<name>` is already being edited - <mod#> not specified means that you are trying to import a program/file that is already being edited on the system being imported to. Merge or overwrite was specified, but you should specify a mod# also. You will not be allowed to import your mod if you encounter this error.
6. FATAL ERROR: `<name>` is already being edited by another mod means that you are trying to import a mod to a specific mod# and you specified either merge or overwrite, but the file/program is being edited by another mod. You will not be allowed to import your mod if you encounter this error.
7. FATAL ERROR: `<name>` is already being edited means neither merge nor overwrite was specified, and the file/prog is already being edited on the system being imported to. You will not be allowed to import your mod if you encounter this error.

---

## 4C Version Control - Using

Once you set up the 4C Version Control, the default development menu
is the Source Code Control Menu.
You can get to the System Menu from here, but I hope it will
be convenient to do most of your development work from here.
4C refers to groups of program specs and file specs being
worked on together as a mod.
Normally, programs and files in a mod are being worked on for the
same or a related reason.
You can work on multiple mods at the same time.
To work on a mod or add a new mod to the system, select the
Active Mods item from the menu.
From here you can:

1. Add a new mod by pressing `<add>`.
2. Make a mod the current mod by highlighting it.
3. Call up prog details for current mod.
4. Call up file details for current mod.
5. Install ALL program and file specs for the current mod.
6. Show ALL diffs of programs and files for the current mod.
7. Checkpoint ALL program and file specs for the current mod.
8. Undo ALL program and file spec changes since last checkpoint.
9. Undo ALL program and file spec changes since start of mod.
10. Compile ALL program and files specs of current mod.

To continue working on a mod,
make it current and call up the program or file details for
it.
Calling up the program details for a mod displays all programs
that are part of a mod.
Pressing the `<add>` key allows adding a new program to the current mod.
Once a program is part of a mod,
it cannot be part of another mod until it has been installed,
or unedited.
It can be installed separately or with the entire mod.
