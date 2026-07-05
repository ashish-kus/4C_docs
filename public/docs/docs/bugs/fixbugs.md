# 4C Bug Fix Log

## 26 June 2009

- A bug involving linked programs that could cause an infinite loop has been fixed on the 4csrvr. Fixed in 4C Server version 4.6.5-1.
- A bug that sometimes prevented focus from being set correctly when clicking on an input field has been fixed in the 4cclient. Fixed in 4C Client version 4.6.5-1.
- The ScrollList sizing bug involving non scrolldet fields with side labels has been fixed. Fixed in 4C Client version 4.6.5-1.

## 25 May 2009

- wpcled will handle large PCLs correctly. Fixed in 4C Client version 4.6.4-2.

## 15 October 2008

- The memory leak in 4CServer versions 4.4.0 thru 4.4.8 caused by many calls to sys.msg() or sys.message() is fixed. Fixed in 4C Server Versions 4.4.9-1 and higher.
- Using the Start Field PCL to set values into an inplist or sellist display field will work correctly. Fixed in 4C Client Versions 4.4.9-2 and higher.

## 05 March 2008

- sys.dr_position() will work in drivers that are restarted after catching an alarm in the EndPage PCL. Fixed in 4C Client Versions 4.4.7 and higher.
- The strmin(), strmax(), min(), and max(() SysPCLs will work reliably. Fixed in 4C Server Versions 4.4.7 and higher.
- The min() and max() SysPCLs will work with any type of numeric argument. Previously only float was allowed. Fixed in 4C Server Versions 4.4.7 and higher.
- Report programs that send output to a file are guaranteed that the output file has been written and closed by the ExitPCL of the program that started the report. Fixed in 4C Server Versions 4.4.7 and higher.

## 02 January 2008

- Literals passed to PCLs as NoChange or ValueOut parameters will no longer cause the literal to be viewed as trashed by other users of the same program. If the parameter is NoChange, 4C will simply ignore that flag. If the parameter is ValueOut, then a warning message will be displayed and the flag will be ignored. Fixed in 4C Server Version 4.4.6-3 and higher
- X'ing out of a layout from a display field that calls another screen program from the SFldPCL will no longer cause the client to crash. Fixed in 4C Server Version 4.4.6-0 and higher.

## 21 November 2007

- 4csrvrd will no longer create a .4C directory or any session directories. Fixed in Server version 4.4.6 and higher. If you ran any earlier 4.4 4cserver, you should check the home dir of root and make sure that you remove the .4C directory.
- The 4csrvr will correctly handle the ContinueWork option when it is not set and when it is set to False. Fixed in Server version 4.4.6 and higher.
- Scrolling lists that define single selection in the program definition will work correctly in layouts that don't specify single or multiple selection. Fixed in client version 4.4.6 and higher.
- The 4cclient will handle all fonts correctly in right justified fields. Fixed in client version 4.4.6 and higher.

## 30 July 2007

- The non interactive client program, 4ccl, will synchronize exit with the server correctly. This fixes the problem of 4ccl hanging for up to 2 minutes when closing the connection to the server. Fixed in client/server version 4.4.5 and higher.
- The windows client and windows server will handle filenames with a share correctly. Previously, there were problems with any filename similar to: `//server/dir/filename.txt` This sometimes prevented the 4.4.4 client from starting up correctly when using folder redirection. Fixed in client/server version 4.4.5 and higher.

## 27 June 2007

- The 4c windows client problem of not being able to print the current window using Ctrl+P has been fixed. The error message: `Cannot StretchBlt() for bitmap print, LastError: 87` should be history now. This is fixed in the 4.2.9 version of the windows 4c client and also in 4.4.4 and higher versions.

## 21 March 2007

- sys.set_dflabel() will work with chkbox and rblist display fields. Requires Client Version 4.4.4 or higher

## 19 March 2007

- A client crash problem due to improper thread synchronization when using 4C DataEncryption has been fixed. 4C Clients 4.2 (4.2.8 and higher) and 4C Clients 4.4 (4.4.3 and higher) have the fix. This problem only affected client pcs running with hyperthreading or dual core enabled.

## 12 December 2006

- You can use scrollhdr fields in Panel Lists with client versions 4.2.8 and higher

## 28 May 2006

- 4C Will no longer allow a variable to have the same name as any asfile name in the same program. This will generate a compile error. Note: Actually, so older programs that depended on this continue to work without change, this is allowed with alpha vars but will warn when the program is compiled.

## 29 March 2006

- xlconv will work correctly when specifying a new access type. Download the fixed xlconv from: [Fixed Bugs Downloads]({{< ref "fixbug-dl.md" >}}) Fixed in the 4C Server executables version 4.2.6

## 28 February 2006

- The source code control bootstrap programs will not allow reedit of an installed program/file/layout on the same mod. Fixed in the 4C Server bootstraps version 4.2.5
- sys.message() and sys.err_msg() can be used between calls to sys.app_msgstart() and sys.app_msgend(). Fixed in the 4C Server executables version 4.2.5

## 17 January 2006

- The bootstrap programs sys.df.fm.pnl and sys.df.fm.scr will default the sys.df_labeltype to "Side" if there is a sys.df_dpylabel and sys.df_labeltype is not set.

## 08 January 2006

- List Panels will correctly show the input screen in Modify and Add mode, even after functions keys are pressed. Fixed in the 4C Client version 4.2.4
- sys.dr_include() will not leave garbage in null fields. Fixed in the 4C Server version 4.2.4

## 01 November 2005

- A ListView problem that sometimes caused the ListView to continually redisplay has been fixed. This was caused when the appearance of the vertical scrollbar forced the appearance of the horizontal scrollbar and this in turn resulted in the ListView being able to fully show less items. The server was not notified of the change and it would get confused trying to display a page. Fixed in the 4C Client version 4.2.3
- A scrolling program using List that allows the list to scroll horizontally will no longer hide all or part of the last displayed line with the horizontal scrollbar. Fixed in the 4C Client version 4.2.3

## 03 May 2004

- Problem - inplist and sellist don't show their data when the list is dropped down and the list displays scrollbars on Win98 clients (version 3.6 and higher). There is no problem on NT/2000/XP clients. Reported: 1 May 2004 Fixed: 3 May 2004 Solution - The Win98 client will not display scrollbars, so the data will display. The user can still scroll past the bottom of the displayed list by using the arrow keys. Fixed in client version 3.6.9, 3.82

