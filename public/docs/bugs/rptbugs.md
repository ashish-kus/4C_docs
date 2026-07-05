# 4C Client/Server Reported Bugs

## 26 June 2009

- There are cases when using sys.link_prog() that the 4csrvr ends up in an infinite loop. It doesn't happen always but the scenario that makes it happen is as follows: Program A pushes Program B. Program B pushes Program C1. Program C1 links to program C2. While still in the InitPCL, C2 links back to C1. This linking back can be explicit by the program, or it can be caused by a mouse click or even a delayed client message. C1 exits and at this point some 4C internal lists are messed up. Control returns to C2 While still in the InitPCL, C2 pushes D and 4C gets caught in an infinite loop. Reported: 23 June 2009 Fixed: 26 June 2009 - 4C Server version 4.6.5-1 and higher
- When an input field is clicked on, but input is not allowed, the next time the field is clicked on it cannot accept the input focus even if input should be allowed. This is easy to see simply by clicking on a field that will accept input during Modify but not during Lookup. Click on the field in Lookup, switch to Modify, click on the field again. Reported: 19 March 2009 Fixed: 26 June 2009 - 4C Client version 4.6.5-1 and higher
- Sizing of a ScrollList program does not work correctly when there are non scrolldet display fields that use side labels mixed with non scrolldet fields without labels. This mostly show up when some of these display fields are positioned below the list and others are positioned to the side. Reported: 12 January 2009 Fixed: 26 June 2009 - 4C Client version 4.6.5-1 and higher

## 25 May 2009

- The wpcled client program does not work correctly when the total number of characters in the PCL is > 32767. Reported: 19 May 2009 Fixed: 25 May 2009 - 4C Client version 4.6.4-2 and higher

## 15 October 2008

- There is a memory leak when sys.msg() or sys.message() is called in some circumstances. This is a timing issue that is hard to describe in detail, but if you notice the memory usage of your 4C Server processes increasing, especially when a long running report that issues lots of sys.msg() or sys.message() calls, then you are probably affected. Using xlview from the command line or running the SystemInfo/UserInfo from 4C will show memory usage. Any 4csrvr process using more than 1meg of memory should be looked at to determine if this really is normal or not. Reported: 01 September 2008 Fixed: 15 September 2008 - 4C Server version 4.4.9-1 and higher Versions affected: 4srvr 4.4.0 thru 4.4.8
- Trying to set the values in an inplist or sellist dpy field that is not a choice data type does not work in the StartField PCL. Reported: 01 October 2008 Fixed: 15 October 2008 - 4C Client version 4.4.9-2 and higher Versions affected: 4srvr 4.4.7 and higher when connected to a 4.4.7 thru 4.4.9-1 client. Workarounds: Avoid using the StartField PCL for setting the values in the list. Most times you should use the Open PCL for this.

## 05 March 2008

- If a program calls sys.dr_restart(DR_CLEAR) after catching an alarm in an EndPage PCL, the sys.dr_position() calls in the next DrInit PCL do not always work. ListView programs are not affected by this. Reported: 14 February 2008 This will work correctly in 4C Client releases 4.4.7 and later. Workarounds: Use a ListView instead of a List Add a SortEOF PCL for the driver in question and search for the record you want highlighted using code similar too: `for (i = 1; i <= sys.dr_count(); i++) { if (sys.dr_readsel(i,DR_ABSOLUTE) < 0) break; if (MyTest==True) { sys.dr_setsel(i,DR_SELON,DR_ABSOLUTE); break; } }`
- When sending a report to a file it is not guaranteed that all the data will be in the file by the time the report finishes. This means that programs that manipulate the report file can not be sure the data is finished being output when they try to manipulated the file. The reason for this is that there are two processes involved, 4csrvr and 4cprt. 4CSrvr may be done sending data to 4cprt, but since 4csrvr does not wait for an acknowledment from 4cprt that the data has actually been written to the file, race conditions do exist. Reported: 14 February 2008 This will work correctly in 4C Server releases 4.4.7 and later. Workarounds: Put a sleep(n) command in the program that manipulates the report output. There are still timing issues here, but with a large enough n, you can be pretty sure that the report file has been closed by 4cprt. Before manipulating the file, run a dummy report that sends output to /dev/null. The dummy report does not have to have any fields and can just exit the program in the open pcl. This is guaranteed to work because 4csrvr will wait for an acknowledgement from 4cprt when it tries to open the new output device. In some cases you can accomplish the same thing by using a pipe for the output device instead of a file that the program then manipulates.
- None of the following system PCLs work correctly and should be avoided. min(), max(), strmin(), strmax() Reported: 25 January 2008 These will work in 4C Server releases 4.4.7 and later. Workaround: Write your own Global PCLs.
- Neither of the System PCLs max() and min() accept any argument types other than float. Reported: 25 January 2008 These will work as documented in 4C Server releases 4.4.7 and later. Workaround: Write your own Global PCLs.

## 07 December 2007

- Passing a literal (float,int,alpha) as a NoChg or ValueOut parameter to a PCL causes other users of the same program to see the literal as trashed until the first users program returns from the PCL. This bugs has been around since the very early character versions of 4C. Reported: 07 December 2007 This is fixed in server release 4.4.6-3 and later. Workaround: There's really hardly any reason to use NoChange or ValueOut parameters to PCLs and certainly not with literals. So unless you really need the value to be passed back out, don't set either the NoChange or ValueOut flag.

## 30 November 2007

- If a user X's out of a program on a field that has a start field pcl that calls another screen program, the client will crash. This is an obscure bug that has been around since layouts were first used. It actually can happen in at least one other situations as well. If a scrolling program calls a display program from the end page pcl, X'ing out of the scrolling program after returning from the called program could also cause the client to crash. Reported: 30 November 2007 This will be fixed in server releases later than 4.4.6-0. Workaround: If you have a program like this, modify it so that it catches the `<exitlayout>` key and then calls: `sys.exit_layout(); sys.exit_prog(-1);` There will be no problems leaving this code in even when the problem has been fixed.
- The bootstrap program, log.purge.run, may need to be modified if you are using it to purge logging data. See: [Logging Changes]({{< ref "../Features/Logging/Changes.md" >}}) for details on how to fix it. Reported: 27 November 2007 This will be fixed in server releases later than 4.4.6-1.

## 21 November 2007

- The 4csrvrd process creates a .4C directory and 4C session directories beneath it. The session directories do not get removed. Reported: 29 October 2007 Fixed: 21 November 2007 - Server version 4.4.6 and higher
- Scrolling lists that specify single selection in the program definition but don't have single selection specified in the layout definition do not work correctly. Reported: 29 October 2007 Fixed: 21 November 2007 - Client version 4.4.6 and higher
- Version 4.4.5 of 4csrvr does not correctly handle the ContinueWork option when it is not set or when it is set to False. It always acts as if it is set to True. This bug exists in versions 4.4.1 thru 4.4.5 of the 4csrvr. Reported: 29 October 2007 Fixed: 21 November 2007 - Server version 4.4.6 and higher
- Some right justified display fields do not display. This depends on the font being used. Courier New on Windows Vista and Courier New Bold on Windows XP both have this problem. This bug was introduced when fixing a different font alignment problem. It only exists in 4C Client versions 4.4.0 thru 4.4.5. Reported: 24 October 2007 Fixed: 21 November 2007 - Client version 4.4.6 and higher

## 30 July 2007

- Version 4.4.4 windows client fails to start when any of CSIDL_APPDATA, CSIDL_COMMON_APPDATA, or CSIDL_PERSONAL are redirected to a folder on a server share. This is caused by 4C not correctly handling pathnames similar to: `//server/dir` Reported: 24 July 2007 Fixed: 30 July 2007 - Client version 4.4.5 and higher
- The non interactive client program, 4ccl, hangs for 2 minutes after the the 4csrvr connection ends when connecting to a version 4.4 4csrvr. Reported: 27 July 2007 Fixed: 30 July 2007 - Client/Server versions 4.4.5 and higher

## 21 March 2007

- sys.set_dflabel() does not work with chkbox or rblist display fields. Reported: 21 march 2007 Fixed: 21 March 2007 - Client versions 4.4.4 and higher Workarounds: None

## 08 January 2007

- 4.4 and 4.2 Clients crash at unpredictable points when connecting to a 4.2 server with Hyperthreaded or dual core processors. Reported: January 2007 Fixed: 19 March 2007 `- 4.2 Client versions 4.2.8 and higher - 4.4 Client versions 4.4.3 and higher` Workarounds: Disable Hyperthreading/DualCore - Not very elegant Turn off DataEncryption 4C - could be dangerous Best option is upgrade client

## 11 December 2006

- Panel programs using Lists that have scrollhdr fields do not calculate list size correctly. This results in a list with unpredictable size, often much larger than the screen. Reported: 11 December 2006 Fixed: 12 December 2006 - Client versions 4.2.8 and higher Workaround: don't use scrollhdr fields in Panel Lists.

## 02 June 2006

- Some client PCs get thefollowing message when trying to print a bitmap of the current 4C program: `Cannot StretchBlt() for bitmap print, LastError:87` Other client pcs running same version of 4cclient and printing to same printer do not seem to be affected Reported: 02 June 2006 Fixed: Not Yet Workarounds: None known Unable to duplicate this problem yet.

## 29 March 2006

- xlconv specifying a new access type does not work and will recreate the original file deleting all data. Reported: 29 March 2006 Fixed: 29 March 2006 - Server version 4.2.6 and higher. Workaround: Download updated xlconv from: [Fixed Bugs Downloads]({{< ref "fixbug-dl.md" >}})

## 28 February 2006

- Calling sys.message() or sys.err_msg() between calls to sys.app_msgstart() and sys.app_msgend() results in the rest of the calls to sys.app_msgsend() to fail. This does not affect the running of normal 4C applications, only those that written special client.srvr programs using sys.app_msgstart(), sys.app_msgsend(), and sys.app_msgend(). Reported: 28 February 2006 Fixed: 28 February 2006 - Server version 4.2.5 and higher.
- The source code control bootstrap programs allow you to reedit an installed program/file/layout on the same mod, but when the mod is installed, the reedited program/file/layout is not installed correctly. Workaround: don't reedit an installed program/file/layout on the same mod. Reported: 28 February 2006 Fixed: February January 2006 - Server version 4.2.5 and higher. The source code control programs will not allow reedit of an installed program/file/layout on the same mod.

## 17 January 2006

- The bootstrap display fields programs, sys.df.fm.pnl and sys.df.fm.scr, blank out sys.df_dpylabel when no label type is set. This is annoying because older programs could have been created with sys.df_dpylabel being set before there was a sys.df_labeltype. This is a problem with the bootstraps released with server version 4.2.0 through 4.2.4. Workaround: Make sure you specify "Side" label when modifying any display fields that have sys.df_dpylabel set, but no sys.df_labeltype. You can also modify the seqefld() PCL of sys.df.fm.pnl and sys.df.fm.scr Add the following to the end of the PCL: `if ((sys.mode=="Lookup")||(sys.mode=="Modify")) { if ((sys.df_labeltype=="")&&(sys.df_dpylabel!="")) sys.df_labeltype = "Side"; }` Reported: 17 January 2006 Fixed: 17 January 2006 - Server version 4.2.5 and higher.

## 04 January 2006

- A List panel does not show the list input screen in Add or Modify mode after a function key is pressed. This is a problem with the 4C client for Windows versions 4.0.0 through 4.2.3. Earlier clients are unaffected because they can't run panel programs. Workaround: None Reported: 04 January 2006 Fixed: 08 January 2006 - client version 4.2.4 and higher
- When using sys.dr_include(), the included var may have garbage in it if it has a 4c null value when added to the driver temp file. This is a problem with the 4csrvr process versions 4.2.0 - 4.2.3. Workaround: Make sure that the "Very First" var referenced by a sys.dr_include() statement always has a value when sys.dr_add() is called. If necessary, call sys.dr_include() with a dummy var that is always set as the "Very First" sys.dr_include() call. Reported: 04 January 2006 Fixed: 08 January 2006 - Server version 4.2.4 and higher

## 01 November 2005

## 02 April 2003

1. There is no way to disable implicit linking or execing of 4C programs within a TabFolder. It probably is too complicated to try to implement this kind of control because: The app probably doesn't want to disable all links The link could occur from another program than the one that decides the link should not happen. (i.e. either other tabs or pushed progs) This problem can easily be worked around by better application design. Some ideas: Don't share data between programs that may corrupt each others data. NN Use rcd locks to block others from interfering

## 14 September 99

1. For applications that need system files, you must export the system files and import them every time you install the 4C Server. You MUST not have the debug file definitions in your application directory though.

## 14 Oct 97

1. When a 4C utility run from a command line connects to the 4C server, you will need to supply a login name and passwd. If you do not have a passwd, you must type ^D at the passwd prompt.
2. All Paths and Env Vars need to use the Unix File Separator '/' even on NT Machines. This is especially important for XLTMP.

## 27 May 97

1. You cannot change the font of a layout while running.
2. The NT Server version of 4C Must be loaded on the C: drive Fixed: 10/1/97

## 20 May 97

1. When running xled from the 4cclient, the cmd is limited to 120 characters. Since the connect string and the path must be passed in the cmd, a verl long path name will cause xled to fail. You can mostly avoid this by specifying the program directory as the FIRST data directory in your XLDATA var. Fixed: 10/1/97
2. In order for scimport to work, there MUST be an FCServer entry in the XLCONFIG file that specifies the local machine and it MUST have Local=Yes specified.
3. scimport, if run from the command line, looks at the XLPROG, XLDATA, and XLEXP vars in the local environment and does not specify an application to the server.
4. It is possible that the 4CSRVRCONFIG file may still be overwritten. Make sure you save yours.
5. The Debugger may act wierd when stepping thru sys.link_progs if the linked to prog links back to the link from prog without exiting.

