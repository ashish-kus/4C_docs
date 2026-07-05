---
title: "4C Remote Mod Import"
weight: 2
draft: false
---

4C allows an application on one machine to import,
compile, and install installed and approved SC mods from
another application on either the same machine or on a remote
machine.
This is accomplished by the addition of a few
4C bootstrap files and programs and some shellscripts
installed into the XLLIB/SC directory.

How to configure and run remote mod imports is described in the
following sections:
[Quick Start]({{< ref "rmodimport.md" >}})
- A quick start overview of how to import a mod,
assuming both machine/apps are configured correctly.
[File Overview]({{< ref "rmodimport.md" >}})
- A quick overview of the 4C files used in
Remote Mod Import.
[Program Overview]({{< ref "rmodimport.md" >}})
- A quick overview of the 4C programs used in
Remote Mod Import
[Configuration]({{< ref "rmodimport.md" >}})
- How to set up a machine/app to allow importing
mods from a remote machine/app
[Troubleshooting]({{< ref "rmodimport.md" >}})
- Some troubleshooting tips and answers to the
most frequently asked questions

---

## 4C Remote Mod - Quick Start

Assuming you have two machine/apps that are configured
correctly for remote mod import,
here are the steps to follow in order to import a mod:

- Run Mod Imports from the main development treeview menu.
- Select the machine/app that you want to import a mod from, and then press rtn or the `<user1>` function key.
- At the selection screen choose the range of dates that you wish to see available mods for, and then click the `<Show Mods>` btn. You will see a list of mods that are available for import.
- Select the mod that you wish to import, keeping in mind that the order in which mods are imported is very important. Importing in the wrong order could result in undoing parts of a previous import.
- Click the `<Import>` btn to bring up the Remote Mod Import screen.
- Click the `<Start>` btn to begin the import. If prompted for a logon, enter your user name and passwd for the machine you are importing from. This is necessary because the local 4csrvr needs to run a 4c program on the remote machine in order to export the mod and copy it to your local machine.
- If the import succeeds, click the `<Continue>` button to bring up the Local Mod Compile screen. If the import has warnings, review the warnings by clicking the `<ViewOutput>` btn. If you are satisfied that the warnings can safely be ignored, then click the `<Continue>` btn to continue the mod import. If you want to cancel the import because of the warnings, click the `<Cancel>` btn or press the `<Cancel>` function key. If the import has errors, click the `<ViewOutput>` btn to view the error messages. You will not be able to continue a mod import that has errors. You must exit and restart the mod import after fixing the problem that caused the errors..
- At the Local Mod Compile screen, click the `<Start>` btn to start the compile of all files and programs in the mod.
- If the compile succeeds on all files and programs in the mod, click the `<Continue>` btn to bring up the Local Mod Install screen. If the compile failed on any program or file, you will not be able to continue to the Local Mod Install screen. You can click `<ViewOutput>` to view the compile errors, or you can click `<Exit>` to return to the Remote Mod List.
- At the Local Mod Install screen, click `<Start>` to begin the mod install.
- If the mod installs successfully, click `<Exit>` to return to the Remote Mod List.
- There should not be any reason for the Local Mod Install to fail as long as the 4C Version Control has been configured correctly.
- Back at the Remote Mod List screen you can select another mod to import and repeat the above steps.

---

## 4C Remote Mod Import - File Overview

The new files are:

- sc_impcntl - defines the remote machine/application that you will import from.
- sc_import - keeps a rcd of mods imported.

---

## 4C Remote Mod Import - Program Overview

The new programs are:

- sc.impcntl.fm - Maintains the sc_import file and links to other programs that allow you to view available mods to import as well as mods already imported. This program is accessed from the Mod Import entry on the system treeview menu. Most tasks associated with imported mods are accessible through this program.
- sc.imp.purge - Simple program for purging old import data. This program is run up to once a day automatically by sc.impcntl.fm. Currently, sc_import rcds are never purged, just data associated with exporting a mod from a remote system to the local system, extracting the programs and files, and installing the mod locally.
- sc.rmod.s - Called from sc.impcntl.fm, this program allows you to select a range of dates and some other criteria for viewing importable and imported mods.
- sc.rmod.1 - Called from sc.rmod.s. Depending on the selection criteria selected in sc.rmod.s, this program shows you some or all of the following: Remote Mods not yet imported Remote Mods that have been imported but not installed Remote Mods that have been imported and installed. From this program you can: Import a mod that has not been imported yet Compile a mod that has already been imported Install a mod that has been imported and compiled View the output of a mod import.
- sc.rmod.imp - Called when you click Import in sc.rmod.1 This program leads you through importing a remote mod. About all you need to do is read the messages and click the Start/Continue/ViewOutput buttons. Errors or Warnings may be generated. You should be real familiar with warnings and errors that can be generated during a mod import and only continue after careful review. The errors and warnings are described in the Mod Import Conflicts section of [Version Control]({{< ref "vc.md" >}})
- sc.rmod.imp.bld - Called from either sc.rmod.1 when Compile is clicked or from sc.rmod.imp when Continue is clicked after a mod has been successfully imported. Errors generated during compile will be saved. This program will not run if the mod was not successfully imported.
- sc.rmod.imp.inst - Called from either sc.rmod.1 when Install is clicked, or from sc.rmod.imp.bld after a successful compile and you click Continue during a mod import. This program will not run if the mod was not successfully imported or if it has not been successfully compiled.
- sc.impout.view.s - Simple starter prog to start the view output program
- sc.impout.view.1 - Displays one of the output viewer tabs

---

## 4C Remote Mod Import - Configuration

Before you can configure remote mod import,
both machine/apps need to have
[4C Version Control]({{< ref "vc.md" >}})
configured correctly.

Configuring an application to use remote import is simply a matter
of creating the 2 new files, sc_impcntl and sc_import in the application
directory and definining one or more remote mod/app combinations that
you want to use for remote mod import.

Here is how you do it:

- Log into the local machine/app where you want to import to.
- Run the sc.impcntl.fm program. Do this by double clicking Mod Imports from the system treeview menu. If this is the first time this program has been run for this application, then you will be prompted to create sc_impcntl and sc_import. You should answer "y" to both create prompts. You will now see a list of current sc_impcntl rcds. You can add new rcds using normal 4C methods. The fields that you need to set for each new sc_impcntl rcd are as follows: scic_name - specify a simple name that indicates the machine and app that will be used for remote mod imports. scic_desc - long description scic_connectstr - A normal 4C connection string in the format Machine=`<hostname>`,Port=`<portno>`,Type=TCP,App=`<app>` It is important that `<app>` specifies the remote application exactly as it is in the _4CSRVRCONFIG file on the remote machine. It is case sensitive. scic_keepfor - The number of days to keep the mod import data. This number can be between 7 and 30. For an import that completes with no errors or warnings, there is very little data that is kept until purge. When a mod import has errors or warnings, more data is kept to aid in debugging if necessary. All data kept is stored as text files in the scic_dir. The sc_import file is never purged. scic_dir - The directory to keep import data and import temp files. This directory will be created when first needed, but you should check that permissions are the way you want them. It is safe to use the same directory for multiple sc_impcntl rcds belonging to the same app, but you should not use the same directory for different apps. You may wish to use an application subdirectory for this such as: /usr/4capp/Imports or you may prefer something like: /tmp/Imports/appname This directory will be created the first time you try to import a mod, but depending on the way you have permissions set on your system, it could be created with the wrong permissions. You need to verify that the permissions are correct and that any user who will import mods has sufficient privileges to create subdirectories, create files, read files, and write files in that directory. scic_usr - A convenience that combined with scic_epwd allows you to run the import without being prompted for a logon to the remote machine. scic_epwd - Encrypted PWD (use encode4c `<pwd>` to get and encrypted pwd) Do not use this unless your machines are completely isolated from the rest of the world. The reason a logon is required is that the local machine must start a 4ccl local process that connects to the remote machine 4csrvr and run 4C programs that export the mod and copy the mod export file to the local machine. If you do not specify Usr/EPwd, then every time you try to import a mod you will be prompted for a usr/pwd combination. After configuring your app to use remote mod import, you should test it with a safe mod with only a single unimportant temp program or file that has no effect on the running of your application.

---

## 4C Remote Mod Import - Troubleshooting

1. Problem: You see the wrong list of mods when viewing the remote mods Check the connection string in the sc_import file and make sure that the App=`<app>` is specified exactly as it is in the _4CSRVRCONFIG file on the remote machine. Check and make sure that the user running 4cfs on the remote machine has permission to run the application specified in the sc_impcntl connection string. This user could be the default user specified in the _4CSRVRCONFIG on the remote machine.
