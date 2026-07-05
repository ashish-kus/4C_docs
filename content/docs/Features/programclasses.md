---
title: "Program Classes in 4C"
weight: 4
draft: false
---

## 31 May 2000

4C allows you to specify a class with each program.
The class of a program restricts the PCLs that that
program may run and helps define the way the program
displays data in a client program
The classes allowed are:

- None - 4c will try to figure this one out and will choose ScreenProg, Report or Update based on what it can determine about the program.
- ScreenProg - A program that displays something on the client display and needs input from the client. 4C will chooses either the DataEntry class or the ScrollList class for a ScreenProg depending on whether it is a scrolling program or not.
- DataEntry - This for non scrolling interactive programs. If you specify ScreenProg for a program class and it is non scrolling, it defaults to DataEntry.
- ScrollList - This for scrolling interactive programs. If you specify ScreenProg for a program that is scrolling, then it defaults to ScrollList.
- ListView - Currently this is unimplemented and defaults to ScrollList instead. It will be implemented in the future.
- TreeView - allows you to define a TreeView style program. A TreeView program does not need to have any display fields. If it does, the only display field class used is title. All other display fields for a TreeView program are ignored. A TreeView program will only execute the PCLs for the Init, Open, Focus, TVSelect, TVAction, End and Exit states. The OpenPCL should be used to build the TreeView with calls to [sys.tv_add().]({{< ref "../SysPCLs/tvadd.md" >}}) The TVSelectPCL is used to do something when the user selects an item. The TVActionPCL is used to do something when the user double clicks an item. The application will use the [sys.tv_getsel()]({{< ref "../SysPCLs/tvgetsel.md" >}}) PCL to get info about the item selected or double clicked. Almost always, when an item is double clicked, both the TVSelectPCL and the TVActionPCL are executed. There is no way to determine that it was a double click that caused the item to be selected in the first place. See the system program sys.menu.tv for an example of how to define a TreeView program.
- Report - Basic report program. Should be extended in the future.
- Update - An update program will only execute the PCLs for the Init, Focus, End and Exit states. Update programs will not display anything on the client display.
