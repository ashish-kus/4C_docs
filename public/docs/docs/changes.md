# 4C Client/Server Change Log

## 04 March 2025

Versions 7.0.0-01 and later

- PDFReports - See [PDFReports]({{< ref "Features/PDFReports/_index.md" >}})
- Fixed a bug where a stmt like `if (fromdate < sys.cur_date || i64 < sys.gmt_curts - 4 * 3600) { dosomething(); }` was geting parsed incorrectly. To encounter the bug you needed to have a relational OR expr and the right side of the OR needed to require at least one temporary 32 bit integer variable. In the case above a temporary int32 variable is needed to store the result of 4 * 3600. If the statement were the following instead `if (fromdate < sys.cur_date || i64 < sys.gmt_curts - 14400) { dosomething(); }` it would not need a temporary int32 variable and the expr would have been handled correctly. I haven't found any examples of this bug causing problems in any of the applications I have been able to look at.

## 09 Sept 2024

Versions 6.7.7-05 and later

- When started with the -V option, 4csrvrd will write verbose debug messages to the auth.log file in HOME_4C/security/ This will help with debugging configuration errors in AuthClient
- The --showsecurity option to 4csrvrd will print security info including AuthClient info that can be later with the -V option to 4csrvrd to help debug security configuration issues, especially with AuthClient

## 31 Jan 2024

Versions 6.7.6-03 and later

- You can use F_TEMP with sys.open_file() on external database files. This will create a temporary JISAM32 file.
- You can use "isin" and "isnotin" in if and if/else statements. i.e. "if (x isin (1, 3 , 5))" It would have been preferable to use "in" and "not in" except there were too many existing programs that were already using "in" as an asfile name.

## 15 Jan 2024

Versions 6.7.6-02 and later

- The sql_ fields in $syslocalf will be set after sys.read_file() and sys.upd_file() calls for Mysql and ODBC. Other Ext types will implement this when needed.

## 27 March 2023

Versions 6.7.5-08 and later

- A minor bug that prevented mouse selection of text from working well when there was a slight pause during selection has been fixed in the 4CClient.
- The external database libs have been improved.

## 11 June 2022

Versions 6.7.5-01 and later

- The sys.rep_string() SystemPCL is more consistent and now allows RS_LEADING and RS_TRAILING rsflags.
- You can specify a display len for Action Area cmdbtns.
- You can specify that the cmdbts in an Action Area are all equal width.
- The default width of dynamic action area cmdbts was changed from 8 to 10 to be consistent with the length of the short msg in context menu items.
- The FCCom external library has new functions, GetResponseHeader() and ParseResponseFile().

## 12 April 2022

Versions 6.7.4-01 and later

- New SysPCL, sys.fl_getrcdlen(), returns the rcdlen of the most recently read rcd in a file.
- The following SysPCLs can be used with the req4c Java plugin that can be used to implement java servlets that get data from 4csrvr processes. sys.send_httpcontent(), sys.send_httpfile(), sys.set_httpstatus(), sys.set_httpheader(), sys.add_httpheader()
- sys.md_calc(), sys.pkey_encrypt(), sys.pkey_decrypt(), sys.encrypt_text(), sys.decrypt_text(), sys.encode_text(), and sys.decode_text() allow base64 url encoding which you specify by setting the encode type to ENCODE_BASE64URL.

## 24 February 2022

Versions 6.4.9-08 and later and versions 6.7.3-06 and later

- An old (35+ years) obscure bug in JISAM32 and JISAM64 has been fixed. The bug caused corruption in a file when a rcd with a length greater then 32,767 bytes was written. This bug caused isrec/isrec64 to sometimes create a corrupted file while trying to fix the original corruption.
- The isdump and isdump64 utilities take a "-I" option that allows the dump to continue after a read error.

## 01 February 2022

Versions 6.7.3-04 and later

- Most system development files and programs now have a security category of "sysdev". If you want to use it, you should define appropriate roles and access in the 4cSys application. If none are defined, then any 4c user can modify system programs and files in any application directory they can access.
- For external sql files, you can specify the maxchar to pad partial end keys with. This can be either a single ansi character or a hex value specified as 0xFF. It may be necessary to specify this for external databases that use certain UTF-8 collations. i.e. The PostgreSQL en_US.UTF-8 collation sorts 'Z' after 'z'
- New SysPCL: sys.file_isopen()

## 07 December 2021

Versions 6.7.3-01 and later

- A bug in the Windows screen panel editor, wpnlsp, that caused random crashes, mostly when dragging either fields or panels has been fixed in both the win32 and win64 versions of the 4cclient.
- You can use the underscore character to separate parts of integer, decimal, and hex literals in order to make them easier to read. Though it doesn't matter how you choose to use them, it is expected that they would be used as the thousands separator. Each numeric literal in the following sets of numeric literals are equivalent
- More errors, including different sql errors and exceptions, are being logged to the application log. 123456 123_456 12_34_56 0x1f1a2f3a 0x1f1a_2f3a 1000000 1_000_000 123456.0123456789 123_456.012_345_678_9

## 20 October 2021

Versions 6.7.3-01 and later

- The FCJSon library allows using either integer or int64 values when setting or getting Int values. Previously all values set and returned were 32 integer values only.

## 18 October 2021

Versions 6.7.3-01 and later and version 6.4.9-06 and later

- There have been some changes in the FCJSon library due to the way the library outputs double precision numbers to a field or to file. The change allows you to specify an optional display value that will be output instead of relying on the default fromatting that the library uses.

## 09 August 2021

Versions 6.7.3-01 and later

- There is better support for 64 bit integer types for all external database types.
- Mapping SQL datatypes to 4C fields is more robust. One of the ways it is more robust is that both the "BOOLEAN" snd the "BIT" sql data types can be mapped to a 4c "choice" datattype.

## 27 April 2021

Versions 6.7.2-01 and later

- In program/dfield/layout definitions you can specify selected item fg/bg as well as a hot tracking fg/bg
- Some external database types supoort the "readonly" option. Currently, mysql, mariadb, and sqlite support this option.
- Client preferences can specify an option for Hot Tracking. Options allowed are Always, Never, Default. Default will use Hot Tracking if specified in the program/dfield/layout definition. The default is Never.
- You can specify a FrameStyle of "Simple" for panels. This will draw a 1pixel box around the panel using the current window text color. This looks better with panels that have specified a background color.
-

## 21 April 2021

Versions 6.7.2-01 and later

Versions 6.4.9-02 and later

- There are 2 new file access types that will allow a JISAM file to be either JISAM32 or JISAM64. They are JISAM3264 and JISAM6432. The difference between the 2 is that a file defined as JISAM3264 will always try to open the file first using JISAM32 and if that fails due to invalid jisam file error, then it will try to open the file using JISAM64. When creating, a JISAM3264 file is always created using JISAM32. The reverse applies to files defined as access type JISAM6432.

## 20 April 2021

Versions 6.7.2-01 and later

- You can specify the width/height of empty rows and columns in Form panels. The fields to set are Min/Pref Col Width and Min/Pref Row Height This makes it easier to for Form Panels to be used like a Table.
- There is a cancelpb PCL that gives the application control over what happens when a user cancels a progress bar.
- You can specify positioning strings as the last 2 optional arguments to sys.start_busy().

## 11 March 2021

Versions 6.7.2-01 and later

- New SysPCLs: sys.cmp_array(), sys.null_array(), sys.init_array()
- JIsam and JIsam64 have new configuration options that enable better file consistency checking when a file is opened. The new flags that can be passed to isconfig/isconfig64 are --verify, --noverify, --syncclose, --synctrans, --nosync
- There is a new system PCL, sys.fmt_hex(`<ival>`), which returns a hex string of an integer value. This is mostly useful with large 64bit integers.
- There is a new system pcl, sys.sleep_ms(`<nmilliseconds>`), that allows the application to sleep for any number of milliseconds.
- More file statistics available when profiling programs
- The 4C Client is better at guessing size needed when using variable width fonts

## 03 December 2020

Versions 6.4.8-01 and later

- There is a new state, the OptionInitAccept state, which is triggered by the user pressing the `<accept>` key on any field other than the first input field, or pressing the `<continue>` key on any field. This allows the application to notice that the InitOption panel will be exiting and the main fld loop will be starting. You can use this PCL to verify values in fields and prevent the entering of the main fld loop. Typically you would use this state to call the refresh PCL the same as if the user had clicked the `<refresh>` cmdbtn. If you do run a PCL in this state and want to continue to the main fld loop, you will need to call one of sys.end_fldloop() or sys.exit_fldloop(). If no PCL is executed the main fld loop will be entered automatically.

## 19 October 2020

Versions 6.4.7-05 and later

- The previously undocumented SysPCL, [sys.del_range()]({{< ref "SysPCLs/delrange.md" >}}) , is documented. It allows deleting of a set of rcds in a file with one statement.
- There are 3 new SysPCLs [atotime()]({{< ref "SysPCLs/atotime.md" >}}) converts a string representation of a time to a 4c time value, which is an integer type. [sys.fl_setoption()]({{< ref "SysPCLs/flsetoption.md" >}}) Allows setting of some file options at run time [sys.fl_getoption()]({{< ref "SysPCLs/flgetoption.md" >}}) Allows retrieving of some settable file options

## 08 August 2020

Versions 6.4.5-01 and later

- You can specify that a field should assume a field has numeric characters when calculating it's width for display on the screen. You can specify this in the data dictionary as well as in the screen display fields. This can be useful when using variable width fonts with some display fields.
- New SysPCLs [sys.copy_pkey()]({{< ref "SysPCLs/copypkey.md" >}}) , [sys.copy_array()]({{< ref "SysPCLs/copyarray.md" >}})

## 14 July 2020

Versions 6.4.4-01 and later

- There have been some minor changes to the FCPdf ExtLib to allow using unicode fonts and utf8 strings.
- I've started documenting the Global PCLs that are useful to application programs. See: [Global PCLs]({{< ref "GlobalPCLs/_index.md" >}}) There is not much there yet but it will be updated as time permits.
- Two runtime errors, divide by zero and invalid array index, will log to the application log and create a tracefile of the incident.
- You can use the 4c debugger in a non interactive manner that makes it possible to create trace files for debugging rarely encountered exceptional conditions. See the Demo application programs demo.dbg.s and demo.dbg.
- New SysPCLs [sys.mk_temp()]({{< ref "SysPCLs/mktemp.md" >}})

## 02 June 2020

Versions 6.4.3-05 and later

- There is a new field, sys.gmt_curts, which is a 64bit integer, that holds the current Unix epoch timestamp. It can be converted to the local epoch timestamp by adding sys.gmt_offset to it.
- [sys.prog_isopen()]({{< ref "SysPCLs/progisopen.md" >}}) is a new System PCL.
- The [sys.fl_save()]({{< ref "SysPCLs/flsave.md" >}}) , [sys.fl_restore()]({{< ref "SysPCLs/flrestore.md" >}}) , and [sys.get_saveval()]({{< ref "SysPCLs/getsaveval.md" >}}) System PCLs allow you to specify an optional name as a first argument.
- You can pass "--noshare" to xlflrpt to avoid printing any shared fields.
- New SysPCL - sys.get_tabtofld() - This allows application to determine, in the EFldPCL, if the user clicked on another field or pressed either the tab or backtab keys.
- There is more syntax highlighting in the Win32/Win64 PCL Editors and preferences for setting your own syntax coloring using RGB values.
- The Win32/Win64 PCL Editor has preferences for enabling/disabling line numbers for printing and for display.
- 4C source code control allows you to copy any version of a program, file, or layout to the clipboard making it easier to undo partial changes to a program. file, or layout.
- When pasting a program, layout, or file you can change the category. This is useful when you you need the new item only for a short time and intend to delete it. In this case, set the newcatg to a catg that is not managed by 4C source control, i.e. "tmp"

## 18 May 2020

Versions 6.4.2-05 and later

- 64 bit integers are supported and any operation that is allowed on integer data types are also allowed on int64 data types. You should check client version before allowing a client to enter data for 64 bit integers because any client older than 6.4.2-05 can not enter 64 bit integers.
- There are 4 new internally defined vars. They are FC_MAXINTEGER32, FC_MININTEGER32, FC_MAXINTEGER64, and FC_MININTEGER64. You can use them anywhere you can use integer/integer64 literals.
- "//" comments are allowed in PCLs. This type of comment lasts until the end of the line

## 05 February 2020

Versions 6.4.1-08 and later

- The SysPCL [sys.set_exttype()]({{< ref "SysPCLs/setexttype.md" >}}) allows setting the exttype for a single file (which is the default), a single program, or the env variable XLEXTTYPE. This is useful when an application needs to work with more than one databases and use SQL statements.
- The Windows 4cclient will use either Ctrl+Alt+F8 or Ctrl+Alt+F7 as default hot keys to popup up the Session Control dialog. You can still set another fkey in client preferences if needed.

## 05 February 2020

Versions 6.4.1-02 and later

- Support for utf8 data type with system PCLs for converting, verifying, fixing, counting characters etc. See: [4C UTF8]({{< ref "Features/UTF8/_index.md" >}})
- integer literals can be entered in hexadecimal format such as 0x1fdd4, 0x1FFDD4, 0X1ABC, 0X1abc. They must begin with 0x or 0X and be comprised of 0-9, A-F, and a-f only. They are helpful when needing to specify unicode code point values.

## 22 December 2019

Versions 6.4.0-05 and later

- sys.dr_endselect()
- sys.dr_endproc()
- rindex()
- dflist sdf_type

## 22 December 2019

Versions 6.2.7-02 and later

- You can request "HorizontalDPI" and "VerticalDPI" from sys.get_clinfo() as long as the client is at least version 6.2.7
- There is an application logging utility that applications can use to log info and error messages consistently. You can write to the application log using the 4cSys global PCL sys.app_log(`<msgtype>`,`<exctype>`,`<severity>`,`<msg>`) You can view the log from by selection "Logging/Application Log" on the system treeview menu. The application log will self purge but you can specify how long entries should be kept in the "System Configuration" screen.
- xlcopy is more efficient when using the -N option.
- xlflgrep allows -A option
- The li_date and li_time fields in log_idx and log_idx64 use UTC date and time. This will prevent any logging issue problems related to switching from daylight savings time to non daylight savings time.
- New fields in $system sys.gmt_curdate sys.gmt_curtime sys.gmt_offset sys.sv_wordsize

## 08 April 2019

Versions 6.2.2-07 and later

- There is a new SysPCL for getting the the dimension of a file variable. It is sys.get_flddim(`<field>`).
- The [sys.file_op()](https://www.4csoftware.com/docs/SysPCLs/fileope.html) SystemPCL has a new operation FOP_SIZE32 which will return the size of the single fullpath argument.
- xlset allows a "-A" flag to indicate adding exactly one rcd. Use the "-s" args to set the primary key and the "-v" "-r" args to set the data field values.

## 11 March 2019

Versions 6.2.2-05 and later

- The profiling is improved and includes a "QuickProfile" option
- There are 2 system PCLs that can be used to help a developer monitor the resource usage of 4C programs. They are [sys.init_rusage()]({{< ref "SysPCLs/initrusage.md" >}}) and [sys.get_rusage()]({{< ref "SysPCLs/getrusage.md" >}})
- The sys.log_getattr() System PCL allows LOG_ATTR_SFTIME as an attrtype. This makes it possible to determine if the local file definition may be out of sync with the remote file definition.

## 28 February 2019

Versions 6.0.9-01 and later

- isck and isck64 will now verify the integrity of the secondary key indexes. previously only the primary index btree was verified.
- System Time, Usr Time, and #context switches are now shown in the profiling programs
- There are more statistics options available that allow saving and viewing the file statistics in any size timeslice desired.

## 08 January 2019

Versions 6.2.2-02 and later

- The program detail for a screen layout can specify highligting the program with a border. This border is smaller than that which is used when the program uses a title area. It is mostly useful when using linked programs within a layout to allow the user to moe easlily see the active program. The colors used to show active/inactive will be specific to the current theme.

## 12 December 2018

Versions 6.0.8-03 and later

- xlview allows a "-s proc" option to display process statistics including system time, user time, i/o stats, and number of context switches.
- There is more info on the system info screen including process idle time in seconds, whether the process is disconnected, and whether the process is a daemon process no longer connected to a client.
- The sys.pkey_open() SysPCL can open an HMAC key.
- For MySQL and MariaDB databases, 64 bit integers are supported. These should be mapped to a 4c float type instead of a to 4C 32 bit integer type to avoid posssible data loss during conversion.
- Program and file statistics are improved.
- An issue with reconnecting after a connection has been lost has been fixed.
- Calling sys.exit_client() will keep the 4csrvr process running as a daemon process as long as "ContinueWork" is set to "True" in _4CSRVRCONFIG. This should only be used when you know that the server process will not call any programs requiring user input.

## 12 Dec 2018

Versions 5.8.9-01 and later

- The win32 4cclient issue of display only text fields not always drawing their borders when windows theme's are used has been fixed.

## 15 May 2018

Versions 6.0.7-01 and later

- An issue with the 4clogwrtd process causing occasional lock problems has been fixed.
- There is a profiling facility accessible from either the main menu or the main development screen, sys.prog.mstr. It should be fairly straightforward to use.
- A locking problem that has been occurring occasionally for ages when lots of users start compiles of layouts and programs has been fixed. The fix does cause xlbuild to run slower, but now no one locks up.
- The data logging facility allows you to specify a directory in order to log all files in that directory as long as the sys.fh_nologf flag in sys.file_hdr is not set.
- The data logging facility allows you to undo and redo changes easily.

## 03 May 2018

Versions 6.0.5-02 and later

- The sys.dr_readsel() SysPCL allows 2 new flags, DR_SHOW and DR_FOCUS.
- The sys.dr_setsel() SysPCL allows 1 new flag, DR_FOCUS.

## 05 March 2018

Versions 5.8.8-02 and later

- MacOS FCClient - Setting an LVItem to "ignore" in the InitPCL will work correctly
- MacOS FCClient - When the FCClient application becomes active after executing a sys.cl_open() message with WAIT, it will inform the 4cserver so the program that called sys.cl_open() will continue executing.

## 12 February 2018

Versions 5.8.8-01 & 6.0.4-01 and later

- A bug that allowed updating of locked records when using sys.upd_file(`<filename>`,F_ADD) without having first read the rcd has been fixed.

## 04 January 2018

Version 5.8.7-14 and later

- When specifying an alternate fontname or fontclass to use in either a panel or a display field, you can specify this for either the display field, it's label, or both. Just separate the 2 with a ":" The first will be for the display field itsellf and the second will be for any top or side label it has. If there is no top or side label, the second entry is ignored.

## 28 December 2017

Version 5.8.7-12 and later

- The 4cclient preferences dialog allows you to specify a Session Control FKey. The session control dialog will still run when proessing `<Ctrl>`+`<Alt>`+`<F8>` but in addition will also run when "`<Ctrl>`+`<Alt>`" is pressed with this alternate session control fkey.

## 29 November 2017

Version 5.8.7-08 and later

- There are 3 external libraries included with the 4cSys application that can be accessed from any application. Logging into the 4cSys application and selecting the "External Libs/Functions" from the Configuration submenu will let you see the calls in each library available to the application. Detailed documentation and Demo programs will be provided soon. The libraries are FCCom - Network/Communications library that allows functionality similar to curl. Most useful for allowing a 4C program to act as a Restful Web Services Client. FCJSon - Library for parsing and creating JSon objects. FCPdf - Library for creating PDFs.

## 29 November 2017

Version 5.8.7-08 and later

- The program build process will verify that substring expressions on dimensioned vars has a dimension specified. Previously, this was not checked and a program would crash when run.
- 4C Security Groups can be used as users in _4CSRVRCONFIG. When used, specify the user name as "@`<group>`" where "`<group>`" is the 4c security group name.
- You can specify SessionControl in the AuthUser security file to override the default session control set for an application. This is most useful for allowing a developer to have acces to the 4C debugger while ordinary end users are not allowed this access.
- Local variables now use the security catagory, the setval, and the updval defined for the variable.
- You can use the $ENV or ${ENV} syntax when specifying the setval and updval values for file variables.
- The following are new SysPCLs sys.get_statinfo() [sys.get_extfnopt()]({{< ref "SysPCLs/getextfnopt.md" >}}) [sys.set_extfnopt()]({{< ref "SysPCLs/setextfnopt.md" >}}) You can export and import external library definitions using the '-u' option to xlexport and xlimport.

## 18 September 2017

Version 5.8.7-04 and later

- The sec_ddaccess file has changed. If you use the 4C DD access security, please review your settings. You may need to update the settings to reflect these changes.

## 18 September 2017

Version 5.8.7-01 and later

- The PCL editor works better with tablets. No more speed issues while syntax highlighting.
- The PCL editor has a preference to disable syntax highlighting.
- Images that are used as a layout background, panel background, or display field image type will be scaled proportionately when the FitWindow To Image and Scale Image flags are both set. This will prevent images from being distorted when the image rectangle is not proportionate to the rectangle it is displaying in. When this is the case the image will be offset in the rectangle by either the image XPos or the image YPos so you probably will want to set these as well.

## 10 July 2017

Version 5.8.5-06 and later

- Due to limitations in older versions of the Windows operating system, there is a separate install of both the 4cclient-win32 and the 4cupdate-win32 programs for Windows-XP, Windows-2000, and Windows-2003. If you need to install the 4cclient on any of these systems, you should first uninstall the current 4cclient-win32 and 4cupdate-win32 packages and then install the XP versions of these packages. If you are using the 4CUpdate program to update clients, you should make sure that your cl-update file clearly distinguishes between 4cclient-win32 and 4cclient-win32-xp using the OSVersion, MinOSVersion, and MaxOSVersion entries. The XP version of the 4CClient is not guaranteed to work with IPV6.
- External programs started by the sh() system PCL will get terminated by 4C if the timeout val that is current when they are started is exceeded at any time with no data being returned by the external program.
- There is a new utility program in the 4cSys application, util.clinfo.log1, that will log client info to the 4cLog file. Run it and look for ClientInfo in the 4cLog file to see the information logged.

Version 5.8.5-05 and later

- Some changes have been made to the 4CUpdate service. See [4CUpdate Changes]({{< ref "Features/4CUpdate/Changes.md" >}})

## 12 June 2017

Version 5.8.5-05 and later

- 4C can use either IPV4 or IPV6 addresses. You can force allowing only IPV4 or IPV6 by setting the FC_IPVERSION environment variable in 4CSrvrConfig to one of the following IPV4 or 4 - Only allow IPV4 connections. IPV6 or 6 - Only allow IPV6 conections. Any - Allow both IPV4 and IPV6 connections. This is the default and there probably is no real reason to force using either IPV4 or IPV6 exclusively.
- When assigning integer calculations to a float the integers are first promoted to a float and then the calculation is done. This means that the result of the statement flval = 1 / 2; will be .5 and and 0. Previously, to get .5 as the result, you would have needed to use an assignment like flval = 1.0 / 2; There is an environment variable FCCOMPAT_NOINTPROMOTE that can be set to "True" to maintain compatability with the older behavior.
- On the Win32 4cclient, When adding items to an inplist or sellist display field, duplicate entries are ignored.
- Display field type "image" allows you to specify a cmdpcl that will be called if the image is double clicked.
- Win32 Client. Display field types "inplist" and "sellist" should completely draw when the window they are in displays. There have been cases where sometimes the "inplist" or "sellist" only partially drew or did not draw at all until something else happened in the window.
- ReadOnly mode set by the Application or in AuthUser can be overriden by individual programs by explicitly setting the security category for the program.

## 30 December 2016

Version 5.8.4-01 and later

- The 4csrvr serverid is always set to a 4byte hash of the 4CServer Host's Public Key This hash is not guaranteed to be unique across all installations, but it is sufficiently unique to maintain necessary data in the clseqf.sxl file for each client.

## 22 November 2016

Version 5.8.3-01 and later

- sys.get_dbinfo()
- sys.bld_dbinfo()
- sys.get_taskinfo()
- XLCONFIG/ExtDBInfo - similar to RcdLockInfo

## 07 November 2016

Version 5.8.2-01 and later

- The MacOS X FCClient will correctly allow setting the fg/bg colors of individual list fields using sys.set_dricolor().
- The MacOS X FClient will correctly allow label sdftypes to span multiple lines
- The 4cclient will create default font classes for tiny, small, large, and huge for any fontclass that has not been already defined for that fontname. You can then specify tiny, small, large, and huge for a layout initial font, panel fontnames, and display field fontnames. In order to specify the fontname for a specific panel, you need to use the "Panels" detail screen rather than the panel screen painter. When the 4cclient creates these font classes, it will use a point size diff from default of -4, -2, +2, and +4. The underlying OS will not always create fonts matching the specified pointsize exactly and it is possible for any of these fonts to be the same size as the default font.
- You can override the fg/bg colors specified in a layout at the program level.
- ListView dfields can use multiple lines and you can specify how it gets split. Splitting is allowed on Character/Word/Field boundaries. When splitting on field boundaries, you need to specify the delimeter to use to determine the field boundary.
- You can specify that an individual DFld should use the MaxFontWidth when calculating the size needed for display. Previously, this could only be at the Data Dictionary level and affected all programs that used the file var.
- The 4C Debugger works better when setting break points and stepping through SQL FOREACH statements.
- There are a couple of new fields in the sys_dftype file that make it possible to align the text within command buttons differently than the default center. See the lcmdbtn in the 4cSys application. The TextAlign fields is what allows this. When using this feature, make sure that you set the Justification for the field to match the TextAlign fields.

## 05 August 2016

Version 5.6.8-09 and later

- At least one MacOS X FCClient issue that caused crashes on some MacOS X systems has been fixed. This was a memory issue that locked up the FCClient.app on some systems.
- There is a new Client preference, "Max Message Merge", that can be set to a positive number. When set, if the 4C Client gets multiple sys.msg() or sys.message(SM_NOWAIT) messages without any other server messages, it will only display the most recently received messages, ignoring up to "Max Message Merge" minus 1 messages. This preference is not real important on the Win32 4C Client since Windows is pretty efficient at updating the display, but on MacOS X, the it can be significant.
- sys.stack_fkey() will work correctly when the fkey is specified as a context menu fkey.
- The 4cSys program, sys.ph.maint, for displaying the program PCL list has been modified to use an initial option panel to allow filtering of the PCL list. This program is a reasonable example of how easy it is to use option panels and of the improved user interface when you do. See [4C Option Panels]({{< ref "Features/Panels/optpanels.md" >}}) and [Typical Option Panel Usage]({{< ref "Features/Panels/optpusage.md" >}})

## 25 July 2016

Version 5.6.8-07 and later

- Context Menu FKeys can be used as the default fkey for scrolling programs without defining the fkey globally.
- A bug that would cause the 4csrvr to crash due to not handling exec TabFolders in MaxOS X exactly the same as Win32 exec TabFolders has been fixed. The TabFolders will still act differently when the application mixes in sys.link_prog() calls but the 4csrvr will not crash anymore.
- A new option to the Application section of _4CSRVRCONFIG allows you to specify whether the default program can be overriden by the client connection to the application. The default is to allow it, but for security reasons it may be necessary to disallow it. To disallow it set "AllowProgOverride=False" in the Application section of any application that should forbid override.

## 06 July 2016

Version 5.6.8-02 and later

- The 4C Client will release some shared memory when it cannot allocated enough shared memory for running a 4C program that is not in shared memory yet. This along with the following change will make it virtually imposssible for the 4C Client not to be able to run a program because the shared memory segment does not have enough memory.
- The default shared memory size used for 4C Clients has been increased. This along with the above fix will make it virtually imposssible for the 4C Client not to be able to run a program because the shared memory segment does not have enough memory.
- There is a new log update type, Create, so that the 4clogrdr can get notices of file creation. See the [sys.log_open()](https://www.4csoftware.com/docs/SysPCLs/log_open.html) for more details.
- [sys.dr_update()]({{< ref "SysPCLs/drupdate.md" >}}) - Allow application to update a driver rcd in the temp driver file. This is useful when you need to modify dr included fields.
- Calling sys.r_fill() with a `<maxlen>` less than the current len will not crash the 4csrvr process. The `<originalstring>` parameter will be returned unmodified.
- The "Option Panel Changed" PCL will get called correctly when sys.dr_restart() is called in an option panel program.
- The current context menu will be set before the client enters the End Page wait state. This is important in programs that switch context menus depending on the current option panel and use context menu fkeys so that the fkeys are enabled/shown correctly.
- Setting sys.xpos_str and/or sys.ypos_str no longer affects sys.get_answer() or sys.message(). If you want to alter the default position of either the sys.get_answer() dialog or the sys.message() dialog you will need to include the positioning strings in the calls to sys.get_answer() and/or sys.message();
- Exiting a layout with multiple active tabs and one of the active programs is in an option fld loop will not crash the 4csrvr.

## 21 June 2016

Version 5.6.7-08 and later

- A minor File/Field encryption bug has been fixed. Previously, a file with a very small max rcd len could have issues decrypting data. The workaround of adding a dummy field of about 100 characters is no longer needed.
- Invalid dates, those earlier than 01/01/1800 or later than 12/31/9999, no longer cause crashes with some Linux distributions.

## 13 June 2016

Version 5.6.7-07 and later

- Hiding and showing panels and display fields is more efficient when a lot of hiding and showing is done.
- Changing the color of a scrolling field to "Default" sets it correctly now.
- Local variables and watchpoints work better when the 4c debugger is run from a Mac OS X 4C Client.
- The compile all option for mods and mod imports is better at compiling all affected layouts and avoiding multiple compiles of the same layout.
- There is a 4C utility program, 4clogread1, that can be used to implement roll forward in case a system crash causes loss of data.
- sys.log_open() allows specifying LOG_FULLPATH so that LOG_ATTR_FULLPATH can be queried using sys.log_getattr().
- For SQL tables, you can specify additional create parameters to be used when 4C creates the table. This is especially useful with MySQL timestamp columns that have strange default options depending on whether they are the first timestamp column or not.
- Shared fields that appear later in a file definition can no longer override the value of key field that appears earlier in the file definition. This situation can only arise if the data in the file is inconsistent with shared fields actually being stored with different values.
- There is a new system PCL, sys.get_pnlidx().

## 29 January 2016

Version 5.6.5-01 and later

- There is a 4c client preference that can be used to turn off the automatic insertion and highlighting of a space character when focus is set on an empty text field. The reason for allowing this is that some people, especially new 4c users tend to click the mouse in the field after it has been highlight, leaving a space as the first character.
- The 4c client will avoid leaving an ampty space at the start of an empty text field when the user either clicks the mouse in the field or presses the left ot right arrow keys.
- There is a new state associated with focus changing between option panels. The Option Panel Changed PCL will run in this state and can be used to change the current context menu and enable / disable function keys.
- sys.get_optpnlidx() will return the index of the option panel keyboard focus.
- You can associate an fkey with a context menu PushButton item. When the current context menu has an fkey associated with an item, it overrides any other use of the fkey specified forth the program or dfield. The label, as long as the fkey is dynamic, will show the same text as the context menu. If the context menu item is hidden or disabled, then the fkey will also be hidden/disabled. If you change the context menu to one that does not have the same fkey defined, then the fkey reverts to the way it is defined for the dfield or the program. The purpose of this change was triggered by the need for option panels to be able to use the same funtion key in different option panels with different labels without having to define the fkey for each dfield in the option panel. See the sys.pr.srch.1 program for one way that this is used. In the Initial Option Panel, the `<user1>` fkey is used as "Refesh" and in the main fldloop, the `<user1>` fkey is used as "Detailed Search".

## 29 January 2016

Version 5.6.3-04 and later

- The wpnlsp program on WIN32 clients will no longer crash when using "ignore" as an sdftype. This was accomplished by making sure the "ignore" display fields display while running wpnlsp. They will display as a very small "hsep" and you canmanipulate them the same as any other display field. When the program is run though, they still are ignored and do not show up.
- sys.rand_integer() - New system pcl to return a random integer between the 2 passed in integers. See the demo.rand.1 and demo.rand.2 programs for examples.
- Some locking issues on the srvr that occur when multiple users are accessing the same programs or layouts and those programs or layouts need compiling have been resolved. Please report any locking problems you do get and if possible provide a way to duplicate.
- You can specify that a file should be created if it does not exist yet when it is used. You should be careful about using this. It is mostly appropriate for temp files being created in the FC_SESSION directory.
- The 4cclient has an AutoConnect option that can be controlled through the 4cclient preferences.
- If the 4cclient starts up and there have been no connections defined yet, the Connection Dialog will appear and you can easily create a connection and even specify it as the default connection when starting the 4cclient. This should make it easier for end users to configure a single connection to always use.
- You can specify fontname and Fontclass different than the default for individual display fields and for panels.
- You can specify an application font file that exists on the server to be copied to the client anytime the font file on the server is more recent than the copy on the client. This file is application specific, based on the XLAPP directory. When copied to the client, the client will store the app-font file in APPDATA/`<appname>`/`<w4ccl>`/app-font.txt. Only one app-font.txt file exists on the client for any single connection/application. Entries in the app-font.txt file will override any other font files for programs that are in the XLAPP directory on the server. These fonts do not override fonts for programs that are store in other application directories such as "system". To define a specific app-font file for your application, run the "Client App File List" entry in the Configuration submenu and use the type "app-font"
- You can specify LSH_NOCONVERT as one of the options to lsh().
- The s_dftype file will be searched in all prog paths instead of in just the current prog path when setting the sdftype for sys.dpy_field, sys.file_det, sys.data_dict, and sys.data_type.
- Input filters work correctly when inherited
- You can Specify r/o for the the run service in either the AuthUser or AuthClient security file.
- An application can be set to ReadOnly by setting ReadOnly=True in the _4CSRVRCONFIG file.
- File variables can be defined as nolog
- The cancel key in colmod works the same on the Win32 Client as on the MacOS X 4c client
- You can use the tab keys to move to none ColMod mode fields on the Win32 4cclient.
- Sharing fields fully can no longer leave some local fields still shared after pushing a different program. This bug existed since day 1 and when sharing multiple fields fully from the calling prog with the same field in the called prog would leave the fields in the calling program still shared on return from the called program.
- File definitions with very large maximum record sizes will calculate this correctly and records will not be truncated.
- When the file details of a file definition specified using the sys.fh_filedet field, it is no longer necessary for the sys.fh_filedet file to be in the XLAPP directory. It now can be in any of the XLPROG directories.
- sys.rep_string() - This new system pcl can be used to replace one or more occurences of a substring in a string with a replacement string squeeze multiple occurences of a single character in a string to one occurence delete one or more occurrences of substring in a string Translate one or more occurrences of single characters in a string with a different character See the demo program demo.repstr.1 for an example.
- sys.fl_numflds() - This new system pcl returns the number of fields in an asfile.
- sys.unshare_field() - This system pcl can be used to unshare fields previously shared.
- Each application can configure how the data dictionary values are inherited between sys.data_type and sys.data_dict sys.data_dict and sys.file_det for regular files sys.data_dict and sys.file_det for program local vars sys.file_det and sys.dpy_field When inheritance is turned off, values are still inherited when adding a new sys.data_dict, sys.file_det, or sys.dpy_field rcd. However, when it is turned off, an extra flag in the corresponding rcd is set and 4C knows not to inherit the values. This means that with it turned off, you can modify a data dictionary value without affecting programs that use that value since they do not inherit it automatically. Use the Configuration/System Configuration entry on the system treeview menu to turn on or off auto inhertit. From the configuration program, use the context menu to call a program that allows you to update the inheritance flag in any or all of sys.data_dict, sys.file_det, and sys.dpy_field. You should have all programs on a mod with source code control when you do this and install them afterward.

## 18 September 2015

- tolower() - implemented as a Global PCL

## 20 November 2014

4CServer Version 5.2.9-01 and later

- 4C can be serialized in ReadOnly mode. Programs can still update files, but users cannot set mode to any of Add/Modify/Delete.
- There are several new system fkeys. They are windowleft - This will move the window to the left. The default for this key is <Shift+Control+LeftArrow> windowright - This will move the window to the right. The default for this key is <Shift+Control+RightArrow> windowup - This will move the window up. The default for this key is <Shift+Control+UpArrow> windowdown - This will move the window down The default for this key is <Shift+Control+DownArrow> showinput - This will highlight the control that currently has the keyboard focus. The default for this key is `<Shift+Control+g>`
- Maximum arglen for user pcls increased to 1024
- You can use dynamic positioning for the sys.get_answer() dialog as well as the sys.message() dialog. See [Dynamic Positioning Of Layouts]({{< ref "Features/DynamicPositioning/ov.md" >}})

## 27 January 2014

4CServer Version 5.2.8-03 and later

- A bug that prevented accurate comparison of alpha vars longer than 512 characters has been fixed. You can now compare alpha variables up to the max allowed 4C length of 16384 accurately.

## 27 November 2012

4CServer Version 5.0.9-07 and later / 5.2.4-01 and later

- You can specify a field defined later in a file definition for sharing. One way in which this is useful is when data is already stored in arrays and you want to use one element of the array as a secondary key.

## 01 November 2012

4CServer Version 5.2.3-09 and later

- Both sys.end_fldloop() and sys.exit_fldloop() handle the case of not being in any fld loop better. There were cases in the past that calling one of these System PCLs would either crash the 4csrvr or cause looping. It's currently not easy for the application to accurately determine if they are in a fld processing loop or not.

4CClient Version 5.2.3-10 and later

- The w4ccl 4cclient will display asterisks in text fields that have NoEcho set instead of nothing.
- The w4ccl 4cclient is better at displaying when users have configured their display to "enlarge" everything.
- Sizing of background images in panels and layouts is more accurate.
- You can use a different font on progress bars for the label field, by setting the "busylabel" entry in your fontdef file.

4CExtDB Libraries Version 5.2.3-10 and later along with 4csrvr
version 5.2.3-09 and later.

- All of the libraries allow you to define 4C files that ignore database fields that are not defined in the 4c file. This means that DB file with an image in it can still be accessed by 4C without 4C having to process the image field. However, if you use 4C to create the database table, it only gets created with the fields that 4C knows about.

## 10 September 2012

- Some minor changes to the 4C PosgreSQL library have been made. See [4C External Database Change Log]({{< ref "Features/Database/Changes.md" >}})

## 08 August 2012

- The ServerId will default to the first specified of the following The env var FC_SERVERID which should be specified in XLCONFIG if used. A 4 byte hash of the MacAddrList for the server The 4 byte IPV4 network address of the server. Earlier versions always used the 4 byte IPV4 Network address. The reason for the change is that many servers always reported 127.0.0.1 as the IPV4 network address and this caused some conflicts in environtments where a client regularly connected to multiple servers that used 127.0.0.1 as their main IPV4 network address based on "uname -a" It is not important that the ServerId be unique across all servers that a 4CClient connects to, but it should be unique for the servers that a typical end user connects to. You can verify if the ServerIds are different in your end users environment by connecting to each Server/4cSys and running SystemInfo and clicking the License tab. The hex server id is on of the display fields. OBSOLETE as of version 5.8.4 FC_SERVERID is always set to a 4byte hash of the 4CServer Host's Public Key

## 06 August 2012

- A bug in the 4CClient that caused run time crashes when running out of shared memory has been fixed. This usually only happened at sites where there were multiple instances running and at least several hundred programs had been loaded into shared memory. This is fixed in 4cclient 5.0.9-01 and later. 4csrvr version is unimpotant.
- A bug that could cause a deadlock when during compile if other users were trying to access the program/layout being compiled has been fix.
- A bug in xlflgrep that prevented -r `<repstring>` from working when using regular expressions has been fixed.

Version 5.2.3-03 and later

- The 4CClient allows you to specify how much shared memory you want to use for the 4CClient. The default of 4Meg should be sufficient for most users. The w4ccl-log.txt file in FC_DOCUMENTS should have enough info in it if you think you are having too much shared memory swapping.
- There are options in the PrFile screen to specify a default external name and a default ReadOnly flag for any file. Specifying the external filenamne here makes it easier to use a dev environment to access live data without having to add a bunch of sys.set_extfname() calls into the InitPCL.
- There are more options when using external database files. They are: For each file, you can specify "Ignore Non 4C Cols". This means that 4C will never look at or update a column in the database unless the 4C file definition includes that column. Thus it is safe to add columns to a database without affecting 4C programs that access that table. It alos means you can have columns in a database such as blobs and images that 4C doesn't know what to do with anyway. However, if you use 4C to create the table, it always uses only the 4C fields for defining columns. For each 4C field, you can specify that 4C should use the DB definition of precision if it is different than the 4C one. For each 4C field, you can specify that 4C should use the DB definition of scale if it is different than the 4C one.

## 05 March 2012

Version 5.2.0-00 and later

- xlflcompare, xlfldoc (more options), xlupd(--ignore-share)
- Better wpcled backup
- wpcled prefs
- More client prefs including default theme
- New PCLs [sys.get_fltype()]({{< ref "SysPCLs/getfltype.md" >}}) [sys.pr_restart()]({{< ref "SysPCLs/prrestart.md" >}}) [sys.restore_share()]({{< ref "SysPCLs/restoreshare.md" >}}) [sys.get_currentts()]({{< ref "SysPCLs/getcurrentts.md" >}}) [sys.fl_save()]({{< ref "SysPCLs/flsave.md" >}}) [sys.fl_restore()]({{< ref "SysPCLs/flrestore.md" >}}) [sys.get_saveval()]({{< ref "SysPCLs/getsaveval.md" >}}) [sys.get_clrect()]({{< ref "SysPCLs/getclrect.md" >}})
- 4csrvr --version
- Some support for 4C themes/styles - incomplete, but still useful
- ListView allows locking single columns to prevent resizing to small
- SP_NOSTRIP - added to sys.split_string
- New option to lsh() - LSH_FOCUSWAIT
- wpcled - preferences
- 4csrvr remembers the last color set by sys.set_pnlcolor() and will not send messages to the client when sys.set_pnlcolor() is called with the same color that is already set.
- Close button on TabFolders and TabContainers. There is also a new fnkey, "closetab" that you can catch to disable the default processing which is similar to the "exitlayout" processing.
- Client preferences allow you to specify whether lists should show selected items using a different color when the list does not have the focus. You can also specify what the default colors are for inactive list selected items. If not specified, the system will use the system colors for inactive selected items.
- [Option Panels]({{< ref "Features/Panels/optpanels.md" >}}) are available as long as both client and server are at version 5.2.0 or later.

## 15 February 2012

Client Version 5.2.3-00 and later

- The win32 client allows you to use the current Windows' theme. Use Client Preferences to enable this setting.
- sys.gmt_offset is a new system var that gives you the offset in seconds of the 4csrvr time from Greenwich mean time. This is useful when manipulating Unix Epoch Timestamps

## 29 December 2011

Version 5.2.0-00 and later

- The build process is better at allocating and determining the max size needed for temp vars used in user PCLs. This greatly reduces the memory footprint of some PCLs.
- sys pcls sys.fl_rcdlocked() sys.get_rlinfo() sys.bld_rlinfo()
- Sizes and addresses for shared mem can be specified with 'K' or 'M'
- Shared Mem manager is better at detecting corruption
- Shared mem manager has option for debug by setting the env var FC_SHMEMDEBUG to True before first 4C instance
- 4cstat is better at managing it's use of shared memory avoiding fragmentation issues
- You can specify RcdLockInfo `<count>` in XLCONFIG and then use the 4cSys program sys.rlinfo.view to see who owns rcd locks. A user with the proper priveleges can send a message to or kill a process that has held a rcd lock too long.

Version 5.0.7-06 and later

- There is a new utility, xlflcompare, to make it easy to compare file definitions defined in different application directories. The file definitions can even reside on different macchines.
- There are more options to xlfldoc. These options were added to make comparing file definitions easier. It's easy to generate a directories of file docs and use a program like beyond compare to view the differences.

## 29 December 2011

Version 5.0.7-05 and later

- The 4cbuild process will exit when the corresponding xlbuild command exits. This is most helpful when running "xlbuild -R" and using SIGINT to kill the xlbuild process. Earlier versions let the 4cbuild process continue running until it finished it's workload which could have been hundreds/thousands of programs.

## 30 December 2011

Version 5.0.7-04 and later

- DD and DT Changes during SC Import and during Paste display the changes to make it easier to determine if the change should be allowed or not
- Any 5.0.7-03 client and later connecting to any 5.0.7-03 server and later will handle QI sellist and inplist dfields the same way it handles QI chkbox and rblist dfields. That is, the dfield will be activated and the the EFld PCL will be executed, but the the current dfield will not change unless explicitly changed by the application.

## 23 October 2011

Version 5.0.6-05 and later

- Both wpnlsp and wpcled allow setting a ReadOnly option on the options menu. This only affects PCLs/Panels opened after the ReadOnly option is set.
- Binary can be specified as access type for a file in the file definition.
- A bug that caused 4C to mix up the order of running 4C programs and could crash the 4csrvr has been fixed. Though easy to duplicate, it didn't happen often and most users never even noticed.
- sys.link_prog() allows specifying LP_FROMCURRENT in order to guarantee that the program linked to must exist at the same level as the calling program. Under some unusual circumstances, this may be useful.
- The Application menu on the client can cascade based on the way the _4CSRVRCONFIG file specifies application entries. Use the "Path" option with an arg of "/name[</name> ...]" All applications listed after the Path option until a path is specified will display in the same submenu. Thie requires both 4cclient and 4csrvr to be at version 5.0.6 or later.
- There is a 4cstat process that can run in the background to gather file/program usage statistics. These statistics can be viewed from the Statistics menu on the main treeview menu. The statistics are per application.
- Find has more options including matching on single field and allows using regular expressions.
- New SysPCLs [sys.rexp_match()]({{< ref "SysPCLs/rexpmatch.md" >}}) [sys.fmt_field()]({{< ref "SysPCLs/fmtfield.md" >}}) [sys.get_keystate()]({{< ref "SysPCLs/getkeystate.md" >}})
- Files that are logged and read without deblocking will now have their before images saved.
- FillOnSet can be specified in the DD to cause a fld to be filled when it's value is set in any way. This may be helpful when a field is Left Fill Blank.
- The system PCLs [sys.msg()]({{< ref "SysPCLs/msg.md" >}}) , [sys.err_msg()]({{< ref "SysPCLs/errmsg.md" >}}) , [sys.message()]({{< ref "SysPCLs/message.md" >}}) now allow any data type for the arguments. Non alpha arguments will be formatted automatically.

## 11 April 2011

Version 5.0.4-01 and later

- sys.set_dfoption() allows "merge"
- sys.get_answer() improvements when using GA_TEXT. Don't allow tabbing to other dfield. Refocus if focus lost to other app and restored.
- JISAM64 - not 64 bit lib, but 64 bit file size
- Improved network efficiency when both Client and Server are at version 5.0.4 or later. Data that used to be sent for every display field every time the program was run is now only sent when absolutely necessary (after program compile, and when client clseqf file format changes) The data that is now stored in client clseqf.sxl instead of being sent every time the program runs includes display field format display field nullformat display field ovformat display field helpmsg display field spc msgs and spcs This is actually a significant amount of network traffic, and though it increases the size of the client clseqf.sxl file, it should improve overall network performance especially with lots of connections and the same program being called multiple times
- Screen Layouts can be positioned dynamically at runtime. See [Dynamic Positioning Of Layouts]({{< ref "Features/DynamicPositioning/ov.md" >}})
- 4cgenkey
- 4ctrace Program and Msg
- New security files
- New security programs
- Autoclose=true can be specified as part of the extname for remote files.
- The FC_REMCONNAUTOCLOSE env var can be set to true to automatically close a remote 4cfs connection when no files are using it.
- You can specify F_CLOSECURSOR as an option to sys.close_file()
- You can specify no highlight sel for a scrolling program. This may be useful when using colors to highlight something. You will still be able to see the focus rectangle for current item. It should only be used with single selection lists.
- Program/run logging
- Better sys.run_layout() handling of vars (i.e. hdr=prog1,det=prog2)
- Encryption is allowed on JISAM files at both the rcd level and field level. Utility prog 4cgenkey used to create keys
- New SysPCLs sys.encrypt_text() sys.encrypt_file() sys.decrypt_text() sys.decrypt_file() sys.set_usrrole() sys.encrypt_file() sys.decrypt_file() sys.get_usrrole() sys.rand_string() sys.encode_text() sys.encode_file() sys.decode_text() sys.decode_file() sys.calc_date() sys.l_strip() sys.r_strip() sys.l_fill() sys.r_fill() sys.trace_init() sys.trace_end() sys.fl_getpkstr() sys.get_praccess() sys.get_fhaccess() sys.get_ddaccess() sys.cipher_open() sys.cipher_close() sys.cipher_setkey() sys.cipher_setiv() sys.cipher_getkey() sys.cipher_getiv() sys.cipher_getkeylen() sys.cipher_getivlen()
- More message digest options (sha256 and sha512) for 4cmdcalc (cmdline) and sys.md_calc() (SysPCL)
- The 4cclient is better at disabling or hiding the `<search>` key when it is not used.
- A bug in tmp vars in a switch stmt has been fixed. `switch(text(len-1,len-1))` Would create a tmp var that would sometimes get reused inside of the switch making it so that only the first case could be counted on to be accurate.

## 01 December 2010

Version 4.8.2-05 and later

- The The debug menu and the CtrlF8 dialog both have a button for "Debug Layout"

## 13 September 2010

Version 4.8.2 and later

- sys.message() and sys.err_msg() will timeout after the greater of SvTimeout/ClTimeout interval specified in XLCONFIG. If there is no SvTimeout or ClTimeout specified, they will timeout after 24 hours.
- All win32 installs are packaged as windows installer files. Before installing either the 4cclient or 4cserver msi file on a system running one of the old 4cclient or 4cserver installs you should consider uninstalling the old 4c packages as documented here: [Uninstalling Old 4C Packages]({{< ref "Features/4CUpdate/OldUninstall.md" >}})
- There is a new package that can be installed on clients to automatically check for and install 4cclient updates. See: [4CUpdate]({{< ref "Features/4CUpdate/_index.md" >}})
- sys.read_file() with any of F_KEYLT, F_KEYLEQ, F_KEYGT, and F_KEYGEQ will work correctly on remote files. Both the local and remote systems need 4csrvr version 4.8.2 or later.
- Browsing will work on remote files.
- The 4cclient has preferences to specify how often to check for updates. This requires 4cupdate to be installed and running.

## 07 July 2010

Version 4.8.1 and later

- A WIN32 memory leak has been fixed.
- Reading remote files sequentially is faster.
- Mixing dates/times/integers in arithmetic expressions no longer converts the result to a float. This should have minimal impact on applications, but it is possible that some programs will not compile. An example a a statement that will not compile is: `round(time1 / 60,0);` Previously (time1 / 60) was treated as a float, when it really should have been treated as an integer. Now it is correctly treated as an integer. If you need it to be treated as a float then use: `round(time1 / 60.0,0);`
- A memory leak in the 4C Crypto library has been fixed. This has minimal impact on most applications, however, ones that make continuous remote connection calls are affected and will probably see memory usage in these processes increase over time. The most affected are 4csrvr processes that open and close a remote log file every minute for replication.
- Accessing remote files sequentially and making updates using the same asfile will work correctly. Previously, it was possible to skip some of the sequentially read rcds.
- sys.get_answer() will set sys_ret to GA_ERRNOTSUPPORTED if called from an non interactive connection.
- The 4C client allows you to scroll on a DisplayOnly multi line text field.
- The 4C client allows you to select/copy from a DisplayOnly text field.
- sys.set_dricolor() allows you to set the color on an individual list item dfield.
- There are flags in the data dictionary and display fields that allow you to specify the initial selection on a display field. Thus you can override the default of selecting the entire display field when first inputting it and specify that the slection is at the start or the end of the field only. sys.set_dfoption(), when called in the SFldPCL, allows you to override the compiled in settings.
- There is a flag in the data dictionary and display fields that allow you to override the default behavior of stripping fmt chars before a field is input. sys.set_dfoption(), when called in the SFldPCL, allows you to override the compiled in settings.
- When switching applications, 4csrvr terminates 4cbuild, 4cprt, and any external connections that it currently has.
- When switching applications, the server environment is restored to the original environment before setting any application specific env vars.
- Not all parts of a relational expression will be evaluated unless necessary. The order will always be left to right, but if the value can be determined without evaluating all parts of the expression, then not all parts will be evaluated. This could have consequences for poorly written programs that depended on something like the following always performing the assignment of y to x. `if (a==b || (x=y)==0) dosomething()` Now, if a==b the (x=y)==0 is never evaluated and x is not assigned the value from y. This is consistent with all other languages.
- The 4cfs server program will work correctly when adding keyed rcds to a remote file.
- sys.send_result() can be used to send data to a PHP program.
- The client has a Connect timeout of 15 seconds instead of the default of about 75.
- Disabled text display fields display as disabled.
- Labels for disabled display fields display as disabled.
- Buttons that use variable width font are sized more accurately than before. This allows them to work correctly in panels that specify EqualWidth for children.
- The client is better at positioning and not wasting space with old style ScrollLists.
- Client is better at calculating screen relative sizes.
- xlcopy takes options -A and -M and is also does a better job of handling date fields in keys.
- There is a new system PCL, [sys.file_op()]({{< ref "SysPCLs/fileop.md" >}}) that allows simple portable file manipulation on client and server machines.
- 4CSrvrConfig supports a Path that is used to arrange Applications into a heirarchy that the client uses to display the application list as a set of cascading submenus.
- New DataDictionary option - sys.dt_nostripbl, sys.dd_nostripbl, and sys.fd_nostripbl allow preserving the trailing blanks in an alpha field. This is useful especially when one piece of text is split amoung multiple detail rcds.
- There is a new system PCL [sys.set_clenv()]({{< ref "SysPCLs/setclenv.md" >}}) that allows the application to set env vars for the current client process.
- [sys.set_env()]({{< ref "SysPCLs/setenv.md" >}}) is a new alias for [sys.put_env()]({{< ref "SysPCLs/putenv.md" >}})
- sys.get_answer() will make sure client is updated with cur fld vals before prompting for input.
- A crash caused by specifying the wrong keynumber in sys.seek_key() has been fixed. An error message is displayed instead.
- Clicking on a TreeView item from a linked program works better.
- There is a new `<sessioncontrol>` fkey. This key is always caught by the client and displays the CtlAltF8 Dialog. Currently it is used in the bootstraps main dev screen
- F_CONTINUE can be used with sys.read_file()
- There are more Data Dictionary/File cross reference files flx_hdr flx_det varx_hdr varx_det and more Bootstrap programs use them where possible.

## 07 July 2010

Version 4.6.9-5 and later
A memory leak in the 4C Crypto library has been fixed.
This has minimal impact on most applications, however,
once that make continuous remote connection calls are affected and will
probably see memory usage in these processes increase over time.
The most affected are 4csrvr processes that open and close a remote
log file every minute for replication.

## 10 August 2009

Version 4.6.7 and later

- A bug that prevented some shared memory from being freed has been fixed. This mostly was a problem with the client and would cause the client to crash when it ran out of shared memory.

## 26 June 2009

Version 4.6.5 and later

- Several bugs have been fixed. See: [Known and Fixed Bugs]({{< ref "Bugs/_index.md" >}})
- Some backtabbing inconsistencies have been fixed.

## 13 March 2009

Version 4.6.4 and later

- A problem with the typeahead fix that caused checkboxes to need 2 clicks instead of one to change state has been fixed in the client.
- The `<usercalc>` key will default to `<Ctrl>`+'='. This is a client side issue.
- The 4cSys programs that handle the `<usercalc>` key have been cleaned up.
- The 4csrvr is better at selecting a current rcd after processing `<delete>`.
- The 4cclient is better at scrolling to the selected rcd when the application uses sys.dr_setsel(...,DR_SHOW).
- sys.dr_delete() is cleaner and more predictable on what rcd will be the next current rcd after sys.dr_delete() processing is done. The application can override this using sys.dr_setsel().
- A bug in 4cpnlsp that made it crash when using display fields defined in a path other than the first program path has been fixed. This is most evident if you have removed duplicated file definitions from your application (as you should) and try manipulating sys.mode using wpnlsp.

## 01 March 2009

Version 4.6.3 and later

- [sys.set_dfoption()]({{< ref "SysPCLs/setdfoption.md" >}}) will handle "ignore" and "no ignore" correctly with Panel ListViews and Panel Lists. If "ignore" is set in the InitPCL, then it will not be possible to set "no ignore" later. Also, if "ignore" is set in the InitPCL, extra whitespace in the ListView will be removed if possible. The following demo programs show different ways that "ignore" works with Panel List programs and Panel ListView programs. dtf.lv2.s - Run this program to see a Panel ListView program and a Panel List program embedded in a layout. dtf.lv.2 - Run this progam standalone to see a Panel ListView program run in it's own layout. dtf.list.2 - Run this program to a Panel List program run in it's own layout. Both the Panel List program and the Panel ListView program prompt to let you decide whether 2 of the list items should be set to "ignore" in the InitPCL, the OpenPCL, or not at all. It is worthwhile to notice the differences.
- TypeAhead is fixed.
- The follwing are new [4C Client Preferences]({{< ref "Config/cl-pref.md" >}}) DisableTypeAhead - Disables TypeAhead buffering. ShowUser - Displays authenticated username in the layout title. ShowDate - Displays current date in the layout title. ShowTime - Displays current time in the layout title. PSHDrConnInfo - Prints connection info in the hdr of a PrintScreen page. PSHdrUser - Prints authenticated username in the hdr of a PrintScreen page. PSHdrDate - Prints current date in the hdr of a PrintScreen page. PSHdrTime - Prints current time in the hdr of a PrintScreen page. PSHdrLayoutTitle - Prints the layout title in the hdr of a PrintScreen page.
- F_READONLY is supported on client files.
- [sys.cl_open()]({{< ref "SysPCLs/clopen.md" >}}) will not convert forward slashes to backward slashes on a Win32 client if you are opening any type of URL. It also allows specifying CL_NOCONVERT in case there are other cases when the path should not be converted.
- The following fkeys are new. continue - works the same as `<accept>` except it does not exit the program if entered on the first input field. tabnext - works the same as `<tab>` except it ignores the TabStopAll pref. tabprev - works the same as `<backtab>` and was added just for the symetric beauty of it.
- ListView display fields will check the NumCols for the DisplayField and adjust column width accordingly.
- ListView display fields will scroll horizontally if necessary during input.

## 02 January 2009

Version 4.6.2 and later

- You can specify AUTOCLOSE for external database connections.
- [sys.close_file()]({{< ref "SysPCLs/closefile.md" >}}) now takes an optional `<closeflags>` argument. One of the flags, F_CLOSECONN, will close any external db connection or remote file connection that the file being closed uses.
- [sys.conn_close()]({{< ref "SysPCLs/connclose.md" >}}) is a new system PCL that can be used to dynamically close an external db connection or an external file connection.
- You can specify F_CONTINUE with [sys.read_file()]({{< ref "SysPCLs/readfile.md" >}}) when using F_DEFAULT.
- There is a new System PCL, [sys.set_eod()]({{< ref "SysPCLs/seteod.md" >}})

## 01 November 2008

Version 4.6.1 and later

- The old sp serialization program is obsolete. Old serialization files will expire at the end of 2009. Any 4.4 install will prompt to convert old serialization files automatically. Any 4.6 or later install will not convert the old serialization files and it will be necessary to obtain one from 4C support. See [4CLicenseInfo]({{< ref "4clicense_info.md" >}}) for info on obtaining a valid 4C License(serialization file).
- The -T option to 4csp will stop working at the end of 2009 as well unless you have a valid serialization file with the AllowTempSerial option set. If you need to use the -T option with 4csp, please specify that when requesting a serialization file. If you still need this capability to protect your own application, it is available when requesting a serialization file. However, there are other methods available to do your own application serialization without depending on 4C serialization. See [4CLicenseInfo]({{< ref "4clicense_info.md" >}}) for info on obtaining a valid 4C License(serialization file).
- A bug that causes the svseqf.sxl to grow continuously when compiling screen programs has been fixed.
- The 4CClient has a new preference that lets you specify TabstopAll. When set the client will advance one field at a time when the user enters the tab key.
- ignore key allowed in the 4cfkey.def file. This is case sensitive and must be entered in all lower case.
- The bootstrap display field definition programs will not reset all display field attributes when the sdftype is changed.
- When importing a mod, if a data dictionary change involves more than one file, the user will be prompted if they want to import that change or not. Previously, all data dictionary changes involving more than one file were ignored.
- New System PCLs: [sys.dr_delete()]({{< ref "SysPCLs/drdelete.md" >}}) - Allow application to delete rcds from the temp driver file. [sys.dr_renumber()]({{< ref "SysPCLs/drrenumber.md" >}}) - Allow application to control renumbering for sequenced drivers. [sys.pkey_open()]({{< ref "SysPCLs/pkeyopen.md" >}}) - Open a public key cryptography key. [sys.pkey_close()]({{< ref "SysPCLs/pkeyclose.md" >}}) - Close an open public key cryptography key. [sys.pkey_verify()]({{< ref "SysPCLs/pkeyverify.md" >}}) - Verify a digital signature using public key cryptography. [sys.pkey_sign()]({{< ref "SysPCLs/pkeysign.md" >}}) - Digitally sign a string of text using public key cryptography. sys.set_svinfo - internal use only
- There are more options to [sys.get_svinfo()]({{< ref "SysPCLs/getsvinfo.md" >}}) They are: SerialCustName SerialLicenseType SerialComputerName SerialMACAddrList SerialMaxUsers SerialStartDate SerialEndDate SerialError SerialHWError SerialDemo SerialInfoDisplayed

Security Fix -
Avoid using the same IV more than once

There are two new JIsam utilities,
either of which can be used to enable doing a backup without
shutting down 4C.

- jissafecp - This will safely copy one or more files even if they are currently open by a JIsam process.
- jisfreeze - This will freeze JIsam, preventing activity until it is unfrozen. For obvious reasons this can only be run by root.

The SysAddr entry in XLCONFIG allows you to specify
addresses for each segment instead of just the first.

There have been some bootstrap changes.
Some of them are documented
[here.]({{< ref "Bootstraps/Changes.md" >}})
There are many more options for defining screen layouts.

The LogFile specified in _4CSRVRCONFIG will not grow larger than 1meg
before saving itself and resetting size to 0.
This is important for users that never shutdown 4c.

You can prevent columns in ListView panels from being resized.
This is controlled by the sys.pnh_lockcolf field in sys.pnl_hdr.
Both client and server need to be at version 4.6 or later for this to work.

You can prevent ListView panels from allowing horizontal scrolling.
This is controlled by the sys.pnh_noscrf field in sys.pnl_hdr.
When horizontal scrolling is disabled, the ListView will also prevent
columns from being resized.
Both client and server need to be at version 4.6 or later for this to work.

Center Justify will work better with variable width fonts when both client
and server are at version 4.6 or later

Shared mem is freed immediately for recompiled
files and programs that are no longer in use.
This should lessen the chance of running out of SysMem
on live systems that are also used for development.

When compiling, 4C verifies that the max number of file variables
does not exceed 32,765.

You can write your own external libraries and call functions from them
in 4C.
See the readme.txt file in HOME_4C/libtestcalc1.d.
Additional documentation will be provided if necessary.

## 10 October 2008

Version 4.4.9 and later

- The 4C Server daemon running under Linux platforms will allow change of password as long as PAM is used for LogonSecurity. This requires PAM to be configured correctly also. Under most circumstances the sshd pam configuration file can be copied to 4csrvrd and used without change.
- Several bugs have been fixed. See: [Known and Fixed Bugs]({{< ref "Bugs/_index.md" >}})

## 14 July 2008

Version 4.4.8 and later

- The 4C client will allow you to enter a carriage rtn into a multi line text field by entering `<Ctrl>`+J or `<Ctrl>`+`<Return>`.

## 04 June 2008

Version 4.4.8 and later

- Reconnect of an all interactive clients, including wpnlsp, spcled, and w4ccl has been improved.
- wpcled will prompt to save an unsaved PCL as a local text if the connection is lost and wpcled fails to reconnect.
- Client Timeouts have been implemented. See: [Timeouts]({{< ref "Misc/timeouts.md" >}})
- There are several new system PCLs: [sys.exit_client()]({{< ref "SysPCLs/exitclient.md" >}}) [sys.flash_window()]({{< ref "SysPCLs/flashwindow.md" >}}) [sys.lock_clientws()]({{< ref "SysPCLs/lockclientws.md" >}}) [sys.auth_userpwd()]({{< ref "SysPCLs/authuserpwd.md" >}})
- There is a checksession.sh script included in the Unix/Linux distributions. It is in HOME_4C/lib. You will need to change it to make it suitable for your installation. You need to copy it to another directory before making changes as all script files in HOME_4C/lib are overwritten during installs. The places that may need to be changed are well marked. What it does is look for obsolete session directories. It will display a message for each directory found and it will also create another script file rmsession.sh that cna be used to remove the obsolete session directories. If you find you are getting obsolete session directories regularly, then there is something wrong with your system and it should be fixed. Possible problems include improper shutdown procedures and 4csrvr crashes.
- The [sys.cl_open()]({{< ref "SysPCLs/clopen.md" >}}) SysPCL allows you to specify CL_NOWAIT.
- 4ccl will clean up its session directory when it is terminated.
- [sys.get_clinfo()]({{< ref "SysPCLs/getclinfo.md" >}}) can return the client UserName, ComputerName, MACAddress, whether or not the client is Interactive, and the amount of time the client workstation has been idle.
- When inputting dates or converting dates from an alpha fld, dashes can be used as mmddyy separators.

## 24 April 2008

Version 4.4.7 and later

- Beginning with version 4.4.7, there is a separate client install for Windows98 systems. This should work with WindowsME and possibly even with Windows95. The main difference between the Windows98 Compatible install and the Win32 normal install is that the Windows98 Compatible install does not try to set any kind of security on any files that 4c uses or creates. All other features will work. Do not install the Windows98 Compatible install on any MS Windows operating system other than Windows98, WindowsME, or Windows98. The install will probably run, but the 4cclient will not. There is no Windows98 Compatible 4cserver install.
- Env vars can be used in the directory path lists used in _4CSRVRCONFIG. For example you could use the following to specify a program path list for a particular application: `prog_lst=${HOME}/test1.d:${XLSYSTEM}`
- The 4C Client will make editing of input fields easier by stripping out formatting characters prior to accepting input on the field. This requires both 4CClient and 4CSrvr to be at version 4.4.7 or later.

## 02 January 2008

Version 4.4.6-3 and later

- There have been several bug fixes. See: [Known and Fixed Bugs]({{< ref "Bugs/_index.md" >}}) for details.

## 01 November 2007

Version 4.4.6 and later

- There have been several bug fixes. See: [Known and Fixed Bugs]({{< ref "Bugs/_index.md" >}}) for details.
- The interactive 4cclient program, w4ccl, has an improved method of allowing and limiting multiple instances. See [w4ccl]({{< ref "Clients/w4ccl.md" >}}) and [4C Client Preferences]({{< ref "Config/cl-pref.md" >}}) for details.
- [sys.dr_setsel]({{< ref "SysPCLs/drsetsel.md" >}}) now allows DR_SELNOCHANGE for selection type and DR_SHOW for selection flags.
- JISAM will no longer allow you to create a file that exists and is open by any process. If you try to create an open JISAM file from 4C, sys.open_file() will set sys.errno to ERR_FILEISOPEN.
- You can modify the default values for FC_APPDATA(Unix only), FC_COMMONAPPDATA(Unix Only), FC_DOCUMENTS(Unix only), and FC_TEMP (Win32 and Unix) See: [4C Environment Variables]({{< ref "Config/envvars.md" >}}) for details.
- You can specify a ReconnectTimeout val in [4C Server Config]({{< ref "Config/srvrcnf.md" >}})
- [sys.get_clinfo]({{< ref "SysPCLs/getclinfo.md" >}}) sys.get_clinfo() can now be used to query ConnectionStatus. This option will work with all clients, interactive and non interactive, and with any version of the client.
- There have been a few bootstrap changes. Some of them are documented [here.]({{< ref "Bootstraps/Changes.md" >}})
- It is no longer possible for multiple instances of the client, using different shared memory to open the same clseqf file.

## 20 August 2007

Version 4.4.5 and later

- You can specify the DefaultSPC of a layout program detail as "Deault" in order to use the DefaultSPC specified in the program definition. This makes it easier to use the same layout with different programs.
- If SingleSelection is not set for a layout program detail, then the value specified in the program definition is used. This also makes using the same layout for multiple programs easier.

## 28 June 2007

Version 4.4.4 and later

- The 4C Client will no longer store connection info in the registry. Instead, it will use text files. The default text files are ${FC_APPDATA}/cl-conn.txt for users private connections and ${FC_COMMONAPPDATA}/cl-conn.txt for the shared connections. The shared connection info will be converted when the 4cclient is installed and any private connection info will be converted the 1st time the client runs for each user. See: [4C Client Connections]({{< ref "Config/cl-conn.md" >}})
- The 4C Client will store preferences in two text files, ${FC_APPDATA}/cl-pref.txt for the current user preferences and ${FC_COMMONAPPDATA}/cl-pref.txt for all users. Current user preferences take precedence over all users preferences. See: [4C Client Preferences]({{< ref "Config/cl-pref.md" >}})
- [sys.get_clinfo]({{< ref "SysPCLs/getclinfo.md" >}}) is a new System PCL that allows you to get some client info.
- [sys.get_clpref]({{< ref "SysPCLs/getclpref.md" >}}) is a new System PCL that allows you to get client preferences.
- [sys.set_clpref]({{< ref "SysPCLs/setclpref.md" >}}) is a new System PCL that allows you to set client preferences.
- [sys.cl_restart]({{< ref "SysPCLs/clrestart.md" >}}) is a new System PCL that allows you to restart the client.
- [sys.split_string]({{< ref "SysPCLs/splitstring.md" >}}) is a new System PCL that allows you to split a string into an array.

## 01 May 2007

Version 4.4.4 and later

- Copy and Paste within the 4c shell window works better.
- The output from xlbuild is more in sync with the 4cbuild process.
- [sys.stack_fkey()]({{< ref "SysPCLs/stackfkey.md" >}}) will now work with `<print>`, `<copy>`, `<paste>`, `<cut>`, `<selectall>`, and `<selectnone>`. Previously, the srvr would catch the stacked fkey but if the client needed to do special processing, it would not get done. Now the client is informed and these stacked keys will act exactly as if the user had pressed them.
- [sys.open_file()]({{< ref "SysPCLs/openfile.md" >}}) will set sys.errno if there is an error opening remote files or client files.
- [sys.open_file()]({{< ref "SysPCLs/openfile.md" >}}) will set sys.errno to ERR_FILEPERM if an open fails due to insufficient privileges.
- ListView programs look cleaner. The extra unused white space is now painted using the same colors as ListView items.
- There are two new local system vars, dr_selok and dr_prevline, that can be used in the fld loop to determine if the item is displaying because the selection changed and what the previous current item was. dr_selok indicates that the 4c program was in the EndPage state and the user would be allowed to select rcds. When dr_selok is 'y' the item displaying is the new current item. Mostly what this does save the programmer from having to set a flag in the end page pcl. dr_prevline can be the same as dr_curline if the user clicks the same item more than once. The demo.tile.1 demo program checks these vars in the slp() pcl.
- All System PCL, Global PCL, User PCL, and External Library calls are cross referenced when programs are compiled.
- There is additional support for images using a new image display field type. See: [Using Screen Images]({{< ref "Features/simages.md" >}})
- There have been some enhancements to panels. See: [4C Panel Changes]({{< ref "Features/Panels/Changes.md" >}})
- There are two new system PCLs: [sys.set_pnlcolor()]({{< ref "SysPCLs/setpnlcolor.md" >}}) and [sys.set_pnlimage()]({{< ref "SysPCLs/setpnlimage.md" >}})
- Env var FC_SESSION will be set for both 4C server and 4C client processes, version 4.4.4 and later. It will be different for each 4C process and will be deleted at the end of the session.

## 29 March 2007

Version 4.4.4 and later

- sys.show_panel() and sys.show_dfield() both accept a SF_NOSHOWPARENT to prevent showing of containing panels when making a panel or dfield visible. This is most useful when the dfield or panel is embedded within a panel tabfolder and you do not want to automatically switch tabs when you make the dfield or panel visible.

## 05 March 2007

Version 4.4.2 and later

- The 4cclient and 4Cserver are Vista Ready ;) Support for Vista will only be for versions 4.4.2 and later.
- If the w4ccl client crashes, a text file with a stack trace and other info will be created in the current users document directory on the client. The file will be named w4ccl-crash.txt. If you want help in determining the cause, please email this file to me. Feel free to have your customers email it directly or through yourself.
- The [environment var doc]({{< ref "Config/envvars.md" >}}) has been updated. Please use this a guideline for which environment variables are available and how to use them. There are notes in there about choosing directories for writing tmp files to.

## 18 December 2006

Version 4.4.1 and later

- The system pcl [lsh()]({{< ref "SysPCLs/lsh.md" >}}) has a new flag LSH_CONNECT that should be used when starting client processes that will be connecting back to a new process on the 4c server machine. The bootstrap programs that startup wpcled or wpnlsp use this option now.
- There is a new field in $system, sys.auth_user. It holds the name of the user that was authenticated to the 4c server. This may be different than sys.l_username in cases where the RunAsUser option is set for the authenticated user.
- There is a new serialization program, 4csp, that uses the 4C Server's host key instead of the host's ip address. On unix installs you will be prompted if you want to convert an existing serialization file to the new serialization file. The new serialization file is named serial.txt and is stored in the HOME_4C/security directory. Once converted, you can delete the no longer needed HOME_4C/serial directory and all it's contents. The options for 4csp are a little different than the ones for sp. For a list of the options, enter: 4csp -H Note: In order to enable use of strong encryption the 4csp program must be invoked with the "-e strong" option. This option is ignored if the "-T" option is also specified.
- Some support for multiple monitors has been added.
- If an interactive client loses the network connection you can be prompted to reconnect. Some important points to note about reconnect: A reconnect may not be possible in all cases. A reconnect may take several tries to reconnect successfully. It can sometimes take over a minute for a reconnect to be successful, so if you enable this option please be patient. If the server notices the connection is gone, it only waits for 2 minutes to see if the client will try to reconnect. If the client does not reconnect within that time it will be unable to. This timeout may change in the future. Reconnect will only be allowed if the AllowReconnect option in the _4CSRVRCONFIG file is set to True This option will be enabled by default in new installations, but for already existing installations you will need to add it yourself to the _4CSRVRCONFIG file .
- There is a ContinueWork option for _4CSRVRCONFIG. Set this to true to allow 4C programs to continue running when the client is no longer there. For more info, see: [4C Server Config]({{< ref "Config/srvrcnf.md" >}})

## 01 November 2006

Version 4.4.1 and later

- Env vars FC_APPDATA and FC_COMMONAPPDATA will be set for both server and client processes.

## 16 Sept 2006

Version 4.4.1 and later

- There is a new system PCL that allows you to calculate a message digest on the contents of a 4C field or on the contents of a file. See: [sys.md_calc()]({{< ref "SysPCLs/mdcalc.md" >}})

## 16 Aug 2006

Version 4.4.0 and later

- Security and encryption. See: [4C Security]({{< ref "Security/_index.md" >}})
- More options to w4ccl and 4ccl. In particular, both accept a "-T" option to try to connect as a trusted user if the server permits it.

## 28 May 2006

Version 4.4.0 and later

1. There have been changes made to Panels. See: [4C Panel Changes]({{< ref "Features/Panels/Changes.md" >}})
2. There have been some minor bootstrap changes. See: [Bootstrap Changes]({{< ref "Bootstraps/Changes.md" >}})
3. There have been some minor bug fixes. See: [FixedBugs]({{< ref "Bugs/FixBugs.md" >}})
4. sys.show_panel() will hide and show the tab labels when you hide and show TabFolder children.
5. sys.show_panel() will disable and enable the tab labels when you disable and enable TabFolder children.
6. sys.set_pnltitle() will update TabFolder labels when you modify the titles on TabFolder children.
7. wpcled allows you to indent or unindent multiple lines at once.
8. isdump will not let you specify a dump file that already exists. This will help prevent losing data when you type: isdump *.xl

## 07 April 2006

Version 4.4.0 and later

1. The w4ccl and wpnlsp client programs allow you to quickly switch tabs using fkeys (Shift+F1 thru Shift+F12). The focus will remain on the TabFolder rather than return to main edit area. This allows you to use the arrow keys to move between the tabs as well. When the focus is on the TabFolder, you can set the focus to the main edit window by pressing Tab or Ctrl+Tab or by clicking the mouse in the main edit area. When the focus is in the main edit window, you can set the focus to the TabFolder itself by pressing Ctrl+Tab or by clicking the mouse on one of the Tabs.
2. The wpcled client program allows you to indent sections of text from the edit menu and the context menu. The are also accelerator keys for indenting more and for indenting less.
3. Specifying a title, frame, and margins for a TabFolder panel will work.
4. Specifying a grabw or grabh value < 0 for a subpanel will prevent that subpanel from getting any of the extra available width and height.
5. There is a traceback button on the Ctrl+F8 client dialog.

## 28 February 2006

Version 4.2.5 and later

1. The source code control bootstrap programs will not allow reedit of an installed program/file/layout on the same mod.

## 01 February 2006

Version 4.4.0 and later

1. [sys.hide_panel()]({{< ref "SysPCLs/hidepanel.md" >}}) is obsolete and [sys.show_panel()]({{< ref "SysPCLs/showpanel.md" >}}) has more functionality.
2. [sys.show_dfield()]({{< ref "SysPCLs/showdfield.md" >}}) is a new SysPCL that allows you to hide, show, enable, and disable display fields.
3. [sys.show_fkey()]({{< ref "SysPCLs/showfkey.md" >}}) is a new SysPCL used to show, hide, enable, or disable items associated with a function key.
4. There are 2 new fkeys used by 4C. They are `<repeat>` and `<repeatall>`. Ctrl+R is the default accelerator for `<repeat>`.
5. Ctrl+A is now the default accelerator for `<selectall>`.
6. The `<repeat>` fkey can be used to repeat the last input on the current display field.
7. The `<repeatall>` fkey can be used to repeat the last input on selected records for the current display field. This is most useful when it is necessary to change one field in many selected records to the same value. This comes up quite often when modifying display fields.
8. The 4ccl client program allows specifying output file with "-o `<outfilename>`" option.

## 31 October 2005

Version 4.2.2 and later

1. Display fields with an sdftype of title in a non Title panel will generate an error during compile.
2. Interrupting xlbuild will cause the 4cbuild process to exit as well.
3. The 4cbuild process will use the same credentials as the xlbuild process that starts it instead of the default user defined in _4CSRVRCONFIG.

## 13 October 2005

Version 4.2.2 and later

1. 4C will maintain usernames up to 20 characters instead of just 8. The sys.user_name in $system still only holds 8 char usernames, but there is a new field, sys.l_username that holds the longer one. xlview will display the longer name, but most other areas of the bootstrap that store user names in files are only storing the 8 character username.
2. The bootstraps will allow you to reference files and fields defined in different 4c program directories as long as the file is defined in one of the directories along the XLPROG path. This change has the following important implications: It is no longer necessary to have bootstrap files defined in your own application. It would be wise and prudent to delete duplicated file definitions, especially those defined in the 4c system directory. The 4cSys program, sys.fhdup.1 allows you to do this easily. Whenever an application uses a file definition in a directory other than the application directory, it may be necessary to recompile the entire application if the file definition in the other directory changes, Currently, this cannot be automated. When you compile a file, it is not possible to mark for recompile programs in other directories that use that file. The new $system fields sys.n_progpaths and sys.prog_path[] are used by the 4c bootstraps to facilitate this. These fields are set by the 4csrvr whenever the the application first starts or changes.
3. There is a program that you can find under the Cleanup submenu of sys.menu.tv to help find and clean your spec directory of unneeded file definitions. This program, sys.fhdup.1, displays a list of files that are defined in the App directory and at least one other directory in the app prog_lst. Select the files you want deleted and then press delete. This will delete the file definition as well as any SC text files related to the file. It does not delete sys.data_dict or sys.data_type rcds.
4. You can change a display field's label dynamically with [sys.set_dflabel()]({{< ref "SysPCLs/setdflabel.md" >}})

## 09 October 2005

Version 4.2.2 and later

1. You can show and hide panels dynamically with the new system pcls: [sys.show_panel()]({{< ref "SysPCLs/showpanel.md" >}}) and [sys.hide_panel()]({{< ref "SysPCLs/hidepanel.md" >}})
2. You can specify a screen panel to be initially hidden.
3. You can use 'G' to to goto specific line numbers in scrolling screens. This will pop up a window where you can enter the line number.
4. Screen layouts are now part of 4C source code control. See: [Version Control Changes]({{< ref "Features/VersionControl/Changes.md" >}}) for details.
5. For applications with source code control enabled, xlimport will not allow import into a read only program, file, or screen layout.
6. You can select non scrolling fields in scrolling screens to modify the same way you can scrolling fields.
7. The word4c program should be able to find the winword.exe no matter which version of Microsoft Office is installed.
8. There is a new field in the local system file, sys.cmd_field. It holds the display field number of the display field running a cmd pcl. The number in sys.cmd_field will be the same as the `<dflabel>` for that display field.
9. There is a new system pcl that may be useful along with sys.cmd_field in certain global pcls. [sys.get_dffileno()]({{< ref "SysPCLs/getdffileno.md" >}})
10. The crt print window will use the lines per page setting from the sys.dev_option file if one is specified instead of hardcoding to 60 lines per page. If not set, the default will still be 60 lines per page.
11. The 4C client will store images in the APPDATA directory instead of in the 4c install directory.
12. The previously undocumented system pcl: [sys.set_dfimage()]({{< ref "SysPCLs/setdfimage.md" >}}) is now documented.

## 12 September 2005

Version 4.2.2 and later

1. xlimport is better at being able to tell if a data dictionary item or datatype changed. You should see less of these messages now.
2. There are new blocking options for VarSeq files. They are VStrip and VNoStrip. VStrip will strip all trailing nulls including numerics. VNoStrip will not strip any nulls. Previously using VarSeq as a blocking method resulted in nulls getting stripped from VarSeq files without a fld separator, but not from files with a fld separator.
3. There is a new cmd line utility program, [4cenv]({{< ref "Util/4cenv.md" >}}) , that allows you to easily set your environment and run programs in the context of a specific 4c application.
4. You can move installed and approved SC Mods between systems more easily now. See [4C Remode Mod Imports]({{< ref "Features/VersionControl/rmodimport.md" >}})
5. Checking for and displaying program and file differences in the SC programs is improved. It may be necessary to create and install a mod with all programs and files on it in order to get the full value of this improvement.
6. The `<Copy>` key will now create a default DIF clipboard entry for pasting into spreadsheets.
7. sys.upd_file(`<asfile>`,F_ADD|F_FORCE) will work on remote binary and remote FixSeq files.

## 05 July 2005

1. You can specify the minimum client version allowed in the application section of the _4CSRVRCONFIG file. Use a line like: MinClientVersion=v.r.l

## 08 June 2005

Version 4.2 and later

1. For some client file processing, you can now use: [sys.cl_open()]({{< ref "SysPCLs/clopen.md" >}}) instead of lsh(). This is useful when different client machines will have different programs that process the file, such as different browsers for processing an html file. It also makes it unnecessary for the application to know or try to determine the exact path needed to open a file on a client machine.
2. Dynamic files are supported. A dynamic file is a file that you can open and access at run time without having the file defined in the PrFiles section of a 4C program. The following SysPCLs are used with dynamic files: [sys.get_dfile()]({{< ref "SysPCLs/getdfile.md" >}}) [sys.rel_dfile()]({{< ref "SysPCLs/reldfile.md" >}}) [sys.fl_getval()]({{< ref "SysPCLs/flgetval.md" >}}) [sys.fl_setval()]({{< ref "SysPCLs/flsetval.md" >}})
3. There is a new flag in the data dictionary that allows you to specify whether 4C null values should be mapped to database null values. If the field defined in the database does not allow nulls, then 4C will not map a null value to null. This is most useful for dates, where the 4C null date of "1799-12-31" usually means nothing to an external database.
4. JISAM will allow file sizes up to 4gig on Linux.
5. You can set an option to have the 4C client display connection info in the title of any main 4c window. This may be useful to developers that may be connected to multiple machines at the same time. The option to set is on the preferences menu of the main 4cclient connect window. It is saved between sessions in the clseqf.sxl file.
6. 4C Client will look first for a clseqf.sxl file in the current users APPDATA directory. If not found there, then it will use the ALLUSERS APPDATA directory to either open an existing clseqf.sxl file. The install will remove any previous clseqf.sxl file in the 4C etc dir. This change was necessary because most users by default dont have write access to any files in the 4C etc dir.
7. 4C Fonts are loaded from 2 different files. The first file loaded is local to a single user and will be one the following: `File specified by Env Var XLFONTFILE Current User APPDATA/4C/4csfont.def` Only one of the above 2 files is read. After loading the user specific font file, 4C will also load font definitions from one of the following: `All Users APPDATA/4C/4csfont.def HOME_4C/etc/4csfont.def HOME_4C/lib/4csfont.def` Only one of the above global font files will be loaded. Fonts defined in the local user font def file take precedence over fonts defined in the global font def file.
8. The function key definitions will be loaded from multiple 4cfkey.def files in the following order. `HOME_4C/lib/4cfkey.def - always loaded one of AllUsers APPDATA/4C/4cfkey.def or HOME_4C/etc/4cfkey.def one of Current User APPDATA/4C/4cfkey.def or env var XLFKEYFILE` Keys defined in files read later override the keys defined in previously read files.

## 09 November 2004

Version 4.2.0 and later

1. for (; ;) will compile and is equivalent to while(1)

## 21 October 2004

Version 4.0.6 and later

1. For alpha variables you can use a "*" in the display format. On input, it is equivalent to "x". On output it displays as a "*".
2. sys.set_dfformat() will now work as documented.
3. The _4CSRVRCONFIG file has a new option, DataEncryption which currently can be 4C or None.
4. Local connections made by 4ccl will use the same security as the logged in user unless the -I option is used. Root will not be able to run 4ccl without specifying either -I or -u `<username>`. Root does not need to supply a passwd in order to run under the security of another user. This may require modifying shellscripts that call 4ccl with a username and passwd. 4ccl will continue to work as before for non local connections.
5. Local connections made by xlbuild will always use the same security as the logged in user. It will be unnecessary to log in again. Root will be unable to run xlbuild. If you have DefaultLogon specified in the _4CSRVCONFIG file only for xlbuild, you should remove it.
6. wpcled handles keyboard input correctly in the find dialog.
7. wpcled highlights parenthesis and braces while you type. A brace or parenthesis without a match is displayed in red. When the caret is to the right of a brace or a parenthesis with a match, both are displayed in green. You can quickly locate a matching parenthesis or brace by moving the caret to the right of the one you want to match and then selecting show match from the context menu.
8. specifying NumCols on sellist and inplist display fields will shrink the combobox width but allow a wide dropdown list. One method of using this effectively is; Use a local var with a wide format, say x(30) Specify NumCols as something smaller than 30. Populate the list with descriptions up to 30 chars. In the EFld PCL, extract the important part of the description to set a key for a data file. The purpose of this is to allow a code field take up little screen space, but allow the user to view a longer description when they drop down the list. You may be able to accomplish the same thing by using overlay panels.

## 18 August 2004

1. xlimport will now preserve sys.pr_schnum and sys.fh_schnum for imported progs and files. This is important for correct operation of 4C Version Control.
2. There is a new 4c fkey, `<info>`, the default accelerator for it is Ctrl+G. Pressing the info key will display a msg box with program name and scrolling program info.
3. You can get scrolling program info by pressing the `<help>` key or the `<info>` key.

## 09 July 2004

1. You can specify a database name with the ODBC external file interface. If no database name is specified, then the default database will be used.

## 01 July 2004

1. 4C can log any file modifications made by any 4c application or 4c utility program. See [4C Logging]({{< ref "Features/Logging/logintro.md" >}})
2. The 4csrvrd daemon has a new option, -m `<maintuser>` This allows only the `<maintuser>` to log on, presumably for maintenance purposes. The `<maintuser>` will still need to provide a correct password when logging on. When the 4csrvrd daemon is started in maint mode, then no ExecProg programs are run.
3. The [sys.get_keyno()]({{< ref "SysPCLs/getkeyno.md" >}}) system pcl accepts a file var CDefine as well as just the file var. This is meant to make it consistent with other system pcls.
4. [sys.expand()]({{< ref "SysPCLs/expand.md" >}}) is a new system PCL.

## 22 June 2004

1. You can specify how often a 4c client should send a ping message to a 4c server. The default is every 5 minutes (300 seconds). With some firewalls, this is not often enough and connections can still get terminated due to lack of activity. Specify the PingTime in seconds. Specifiying a value of 0 is the same as specifying the deault of 300. Specifying a value < 0 means the client will never send a ping to the server.
2. The connection string specified with most 4c client programs can now have an additional parameter to specify "App=`<application>`". You can use this instead of -a `<application>`. If the application is specified as part of the connection string and as a "-a `<application>`" option, the "-a `<application>`" takes precedence.

## 03 May 2004

1. There are two additional options in 4cconfig for setting environment variables for all 4C processes. They are: LocalEnv `<envvar>` `<value>` - The env var will be local to this process only and not exported to child processes. Env `<envvar>` `<value>` - The env var will available to this process as well as to children processes.

## 27 April 2004

Version 4.0.0 and later

1. You can exit the wpcled program by pressing `<cancel>` or `<accept>` when no pcls are open.
2. You can exit the wpnlsp program by pressing `<cancel>` or `<accept>` when no programs are open.

## 08 March 2004

Version 3.8.1 and later

1. The w4cpwd program can be called from the SessionControl dialog (`<Ctl>`+`<Alt>`+`<F8>`). Keep in mind that changing passwds is not supported on all server versions of 4C. You must be connected to a 4csrvr for this to work. This feature can be disabled from the server by specifying "-ChangePassword" in the SessionControl area of _4CSRVRCONFIG.

## 07 March 2004

Version 3.8.0 and later

1. The screen display field type, sdftype, now has a default value stored in the Data Dictionary. It works a little different than most Data Dictionary attributes in that you can change the data dictionary default value without affecting any current programs.
2. You can specify "None" for overflow formats and for null formats. The null format and overflow format fields are specified in sys.data_type, sys.data_dict, sys.file_det, and sys.dpy_field. Specifying "None" will have the same effect as blanks in these fields, but may be easier to set in some cases.

Version 3.7.7 and later

## 09 December 2003

1. Input filters have been implemented.
2. 4C will catch invalid default driver files at build time.

<!--
You can "Hide" an application from the clients application menu
by specifying "Hide=True" in the application area.
This will have implications in the future...
-->
Version 3.7.6 and later

## 18 November 2003

1. There is a new SysPCL, sys.get_usrinfo(), for retrieving data about current 4c users. See the 4cSys program sys.ui.display for an example.

Version 3.6.7 or 3.7.6 and later

## 10 November 2003

1. You can use the standard shell syntax ${VARNAME} in setting environment variables through config files and through the sys.set_env() SysPCL.
2. You can use "Groups=..." in _4CSRVRCONFIG. Use it like "Users=..." The group names are the security groups of the OS that a user belongs to.
3. The cmd buttons on the SessionControl dialog (Ctl+Alt+F8) can be disabled or enabled by the server using options in the _4CSRVRCONFIG file.
4. An option in _4CSRVRCONFIG, AllowPasswordSave, allows the server to control whether clients are allowed to save passwords.

Version 3.7 and Higher

## 03 November 2003

1. There is a flag in the data dictionary that allows you to specify using the max font width when a variable width font is used in screen programs. You do not need to specify this for numeric, date, or time fields since they can already accurately calculate sizes.
2. The default font file on the client, lib/4csfont.def has more entries in it. It also makes greater use of variable width fonts than before.

## 03 October 2003

1. The serialization program, sp, has two new options: -V - Will verify then Serialize file -f `<serfname>` - Lets you specify the name of the serialization file. The default is XLSERIAL/Serialize. Unless the first char of `<serfname>` is "/" or "." it uses the file XLSERIAL/`<serfname>`.

## 29 September 2003

1. Screen programs can now be subdivided into panels. See [4C Panels]({{< ref "Features/Panels/panels.md" >}}) [4C Panel Screen Painter]({{< ref "Features/Panels/panelsp.md" >}}) [wpnlsp]({{< ref "Clients/wpnlsp.md" >}}) for more details.
2. Pasting text into a display field will check each character against the format and convert it as necessary.
3. Using ^X (cut) ^C (copy) and ^V (paste) will work as expected on text fields when the application does not try to process the `<cut>`, `<copy>` and `<paste>` keys.
4. When compiling files/layouts/programs, 4cbuild will error exit if it has to wait longer than 10 seconds in aquiring a record lock. This should eliminate the compiling deadlocks.
5. HSplitPane and VSplitPane are new panel types.
6. The sys.link_prog() PCL accepts an optional `<flags>` argument that can be either LP_DEFAULT or LP_FROMANCESTOR. Specifying LP_FROMANCESTOR links from a program higher up in the heirarchy of currently pushed programs. This makes it easier to use function keys to link to another tab in a tab folder.

## 21 September 2003

1. The windows pcl editor, [wpcled,]({{< ref "Clients/wpcled.md" >}}) is now the default. You can still get the old one from the pcl list context menu or by setting a client env var, _4CPCLED, to "xled"

## 07 August 2003

1. Programs specified as driver programs but without any display fields will give a compile error.

## 03 April 2003

1. ListView is implemented. Details of ListView must be specified as lvitem. You will need to modify the s_dftype definitions in your application to have an lvitem. You can run the sdft.fm 4C program to do this, or you can just xlcopy the system s_dftype file to your own application.
2. A new system PCL sys.set_sortdf() can be used with listviews to display an sort increasing or decreasing image on the column header.
3. A new system PCL sys.set_pnltitle() can be used to change the title on a screen panel.
4. Top and Side labels can be defined in the data dictionary and used in display fields.
5. Screen programs can now be defined as class Panel, and the application can arrange the display similar to Screen Layouts.

Version 3.6 and later

## 21 June 2003

1. The 3.6.5 ntsrvr and rs6000 server can handle expired passwds. If you have the 3.6.5 client installed and the server notices that the passwd is expired then you will be prompted to enter a new passwd. For this to work, the 4csrvrd daemon needs correct permissions.

## 17 April 2003

1. Using the local printer will work consistently.

## 03 April 2003

1. Using +/-`<n>`m works correctly in dates. There was a problem when adding any number of months to the 31st day of a month.
2. Trying to modify an empty scrolling program will not hang anymore.
3. Several improvements have been made to the 4cShell window. These include: Not hanging after too much text has been displayed Correctly displaying all lines, including lines with only newlines. X ing out when the shell is waiting for input wont cause it to hang. Trying to input data after moving the caret will scroll back to the end of the text and allow input instead of just beeping.
4. Reading a client text file (VarSeq or FixSeq) sequentially is faster. 4C will read up to 500 rcds at a time without requiring synchronous network reads/writes.
5. Type ahead is allowed on the 4cclient. In the past, the 4cclient always waited for the 4csrvr to request input from a field before allowing input. Now, you can type away.

## 23 September 2002

1. Scrolling is much smoother now.
2. There is a new system PCL, [sys.sl_settab(),]({{< ref "SysPCLs/slsettab.md" >}}) that allows you to dynamically hide,show,disable,enable, and change the label for the tabs on a TabFolder.
3. There is a flag in sys.dpy_field to specify that the field is a tabstop.

## 12 September 2002

1. A new client program, wpcled, can be used instead of xled for editing PCLs. You can run wpcled standalone, or it can be started automatically by the bootstraps when you choose to edit a PCL. It is fairly easy to use and you should be able to adapt to it just by running it a few times and checking out the different menu options on the menubar and on the context menus. In order for it to start automatically, both 4C client and 4C server must be at least version 3.6.2. In addition, you need to set the _4CPCLED environment variable on the client to "wpcled" This editor as well as this version of 4csrvr allow longer PCL stmts than previous versions. If you use longer stmts and export to earlier versions of 4C, you may find some of your stmts are being truncated. If you have problems running wpcled, make sure you have a 4csfont.def file in the 4c etc directory and that there is an entry for "pcltext" If there is no entry for "pcltext", then the "list" entry is used. You should use a fixed width font for the pcltext entry.
2. Container layouts can now be tabbed. Specify TabContainer as slh_type when defining your layout.
3. A new system PCL, [sys.set_winlabel(),]({{< ref "SysPCLs/setwinlabel.md" >}}) allows you to dynamically change the text on the Window menu or the text on a TabContainer tab.
4. You can determine if remote file open errors are caused by some type of connection error by comparing sys.errno to ERR_REMCONN.
5. F_READONLY will work with sys.open_file() on remote VarSeq and FixSeq files.
6. xlcopy will work on integer fields that have commas in their format.

## 04 May 2002

1. The 4C Print Window has been enhanced quite a bit. Some of the enhancements are: The 4C Print Window does not wait for the user to close the window. This allows you to keep the output from multiple reports on the screen at the same time. The 4C Print Window allows horizontal scrollbars when necessary. Find works much better. You can use the accept or cancel key to exit the 4C Print Window.
2. There is a new 4c utility program, xltosql, that can be used to generate an sql script for creating database files.

## 22 April 2002

1. There is a system var for the application name, sys.app_name.
2. Printing of a Screen program is supported. The full layout of the program initiating the print will be printed as a bitmap.
3. Scrolling programs will allow the user to search through the scrolling list and find one of next, prev, first, last, or all strings that match some user input.
4. sys.set_dfattr() will work for Report programs.
5. A new field in $syslocalf, sys_ret, can be used to check return codes from SysPCLs that do not return integers. Currently, sys.get_answer() will set sys_ret to either GA_CANCEL or GA_OK. Other SysPCLs will set this field in the future.
6. Cutting and pasting between 4C applications as well as between 4C and other applications is supported. This is documented separately in [Cut/Copy/Paste Overview]({{< ref "Features/cutpaste.md" >}})
7. Some of the bootstrap programs allow copying program specs to the clipboard and pasting program specs from the clipboard. In particular: sys.prog.mstr allows copying an entire program to the clipboard and pasting full or partial programs from the clipboard. The program name can be changed when pasting. sys.fh.maint allows copying an entire file definition to the clipboard and pasting file definitions from the clipboard. PCLs can easily be copied to the clipboard and pasted from the clipboard in sys.ph.maint. You can change the name of the program or individual PCLs when pasting from the clipboard into sys.ph.maint. sys.df.maint1 allow pasting from types sys.dpy_field, sys.file_det, and sys.prog_exp. Most other program development programs that use a sequenced driver file allow pasting of the same type. You really will have to try this out to see how powerful it is.
8. There are a several new SysPCLs to give the application program control over copying to the clipboard and pasting from the clipboard. They are: [sys.cbc_init](https://www.4csoftware.com/SysPCLs/cbcinit.html) [sys.cbc_end](https://www.4csoftware.com/SysPCLs/cbcend.html) [sys.cbc_open](https://www.4csoftware.com/SysPCLs/cbcopen.html) [sys.cbc_close](https://www.4csoftware.com/SysPCLs/cbcclose.html) [sys.cbc_senddata](https://www.4csoftware.com/SysPCLs/cbcsenddata.html) [sys.cbc_sendtext](https://www.4csoftware.com/SysPCLs/cbcsendtext.html) [sys.cbp_getcount](https://www.4csoftware.com/SysPCLs/cbpgetcount.html) [sys.cbp_gettype](https://www.4csoftware.com/SysPCLs/cbpgettype.html) [sys.cbp_getnflds](https://www.4csoftware.com/SysPCLs/cbpgetnflds.html) [sys.cbp_getipaddr](https://www.4csoftware.com/SysPCLs/cbpgetipaddr.html) [sys.cbp_getappname](https://www.4csoftware.com/SysPCLs/cbpgetappname.html) [sys.cbp_getport](https://www.4csoftware.com/SysPCLs/cbpgetport.html) [sys.cbp_getdata](https://www.4csoftware.com/SysPCLs/cbpgetdata.html) [sys.cbp_gettext](https://www.4csoftware.com/SysPCLs/cbpgettext.html) [sys.cbp_exit](https://www.4csoftware.com/SysPCLs/cbpexit.html)
9. There are a few new SysPCLs in addition to the ones specific to cut/copy and paste operations. They are: [sys.get_filename()]({{< ref "SysPCLs/getfilename.md" >}}) [sys.get_asfile()]({{< ref "SysPCLs/getasfile.md" >}})
10. You can specify TSV for a blocking type for a VarSeq file.
11. Default driver options can be specified in the driver specification. These can be overridden by the sys.set_droption() SysPCL.
12. A TabFolder that uses LinkProg between tabs can override this for any single tab and have that tab exec progs instead of linking.
13. [sys.kill_prog()]({{< ref "SysPCLs/killprog.md" >}}) allows more options now.
14. There are several new function keys. Some are processed only by the client but are defined so that they can be used in menus and action areas. Others may allow application processing as well. The keys and their default processing are listed below. copy - `<Ctrl+C>` - This is used to copy data to the clipboard. The client will copy default data if the application does not process this key. You will probably want to put this on an edit menu since `<Ctrl+C>` often gets trapped by windows. cut - `<Ctrl+X>` - Delete data and copy it to the clipboard. find - `<Ctrl+F>` - If the application does not process this key then it allows searching in a scrolling screen for specific sequences of characters. For non-scrolling programs, there is no default processing. The application can override this default behavior. findnext - `<Ctrl+N>` - If the application does not process this key, then it finds the next occurence of the last search string in a scrolling program. findprev - If the application does not process this key, then it finds the previous occurence of the last search string in a scrolling program. paste - `<Ctrl+V>` - Initiate a paste operation. The application will have to either enable paste in the driver definition or process this key for anything to happen. save - `<Ctrl+S>` - This key is currently only defined so that `<Ctrl-S>` can be used in the 4C Print Window. Applications are free to process this key as they wish. selectall - For scrolling programs, this key is always processed by the client and selects all items. The application cannot process this key. selectnone - For scrolling programs, this key is always processed by the client and deselects all items. The application cannot process this key.

## 20 February 2002

1. Client connection info can be saved as private or local to the machine.
2. You can use SQL stmts and call stored procedures from 4C. See the [4CSQL document for details and examples.]({{< ref "Features/Database/sql.md" >}})
3. You can add vertical separators after scrolling detail fields by setting the sepafter flag in the display field definition. You can set a default for this flag in the display field type definition.
4. You can add the vertical separator after all fields in a scrolling program by setting the framecols field in the layout detail definition.
5. You can use multiline text fields. Specify max items/lines as well as ncols in the display field detail. You probably will want to set vertical and horizontal stretch as well so the field resizes nicely.
6. You can use a display field type of vsep or hsep to draw separators and boxes. Use a one char literal and a format equal to the length you want drawn. In order to draw a box you will need to use 2 vsep fiels and 2 hsep fields.
7. You can use and environment variable for the ExtType in a file definition. In fact, it is strongly recommended to use XLEXTTYPE for the ExtType and make sure that XLEXTTYPE is set for each application that needs it. Using SQL in 4C is dependant on the XLEXTTYPE env var being set.
8. The 4C serialization method has changed. Instead of depending on inode and last modified date of some file, it will now depend on the IP address of the host machine. The IP address corresponding to the name returned by the hostname command is the IP address of the machine. This cannot be the loopback address of 127.0.0.1. Any current serialized version of 4C will need to be reserialized. You will be able to dump the serial directory and restore it if necessary. If you change the IP address of the host machine, you will need to reserialize. If you cannot get 4C reserialized and you need to run in demo mode, then remove the Serialize and Security files from the serial directory. You will be able to run 2 4csrvr processes and any other processes necessary.
9. You can set the initial width of a treeview that is part of a HRowCol or HSplitPane by setting the relative width in the layout detail. It is not necessary to set relative widths of all items and for the most part, you should avoid setting a relative width for any container item that is part of a HRowCol or HSplitPane.
10. The 4C client will allow nulling of sellist and inplist data fields as long as they are not mandatory input fields.

## 15 January 2002

There are a number of new math functions
callable as system PCLs.
These are documented along with some previously
undocumented math functions in
[math functions]({{< ref "SysPCLs/mathfunc.md" >}})

## 23 October 2001

1. The context menu layouts are cleaned up a bit to make it easier to copy global function keys to context menu items.
2. You can specify DR_DUPOK and DR_NODUPOK as a flag to sys.set_droption().

## 11 October 2001

1. This is now OBSOLETE - You should use client preferences for specifying how to configure and limit multiple instances of w4ccl See [w4ccl]({{< ref "Clients/w4ccl.md" >}}) and [4C Client Preferences]({{< ref "Config/cl-pref.md" >}}) for details. Clients that are using shared memory will be able run multiple copies of w4ccl using the same clseqf.sxl file. By default, client only installs do not use shared memory, but server installs do. In order to enable using shared memory on a client only install, you need to create a 4c.cnf file on the client. It needs one or two lines only Be aware that if you use shared memory on a client system, then you must use the same client seq file. If you try using multiple client seq files and shared memory at the same time you will have problems. 4cclients version 4.2.7 and later will not allow you to use multiple client seqf files and shared memory at the same time. `SysMemory 4096` On an NT or Windows2K system, it will also need to specify SysAddr. `SysAddr 200`
2. The 4C data dictionary has new fields that can be used in file definitions. The fields are sys.dt_setval, sys.dt_updval, sys.dd_setval, sys.dd_updval, sys.fd_setval, and sys.fd_updval. These fields can be set to either an environment variable, or a field in a usr scratch file, sys scratch file, or the system file. When 4C allocates the field buffers for a file, it sets the value of all fields that have a setval. This value will stay set unless the application changes it. This can be used to implement company codes that need to stay the same while an application is running, but may need to be different for different users. Fields that utilize a setval will most likely be key fields. When 4C updates a rcd, it will set all updvals in the file to the value specified in the updval. This can be used to timestamp changed rcds and to keep track of who made the changes. Of course this has no affect on deleted rcds.
3. You can specify the application in the external file name of a file that is on a remote machine. Just add the App=AppName to the external name. Heres an example of an external file name: `"Machine=linuxmain4c,Port=1414,App=4cSys!"` This will work with the -n option of the 4c utility programs as well as sys.set_extfname().
4. You can specify environment variables in the _4CSRVRCONFIG file specific to an application rather than an entire 4c session. In the application area use a separate line, indented with a tab and of the form ENVAR=envval I realize this format is different than the session level environment variables, but it is the best format to use. When an application starts, all environment variables that the application specifies will be set. When an application ends, these variables do not get reset. They will only be set to another value if the next application that starts specifies those variables as well.
5. There is a new field in the sys.ext_type file for setting the default isolation level of database transactions. You should use this field rather than the InitStrings for setting the default isolation level.
6. There are 2 new System PCLs for setting and getting the ext type of an External database file. The type is the key to the sys.ext_type file. The 2 System PCLs are [sys.set_exttype()]({{< ref "SysPCLs/setexttype.md" >}}) and [sys.get_exttype()]({{< ref "SysPCLs/getexttype.md" >}}) You may want to use these if you are copying data between different databases.
7. Most of the 4C utilities will allow you to specify a `"-e `<exttype>`"` option. This will work similar to the above sys.set_exttype() System PCL. Using "-d" and "-e" for the same command will not work in most cases. Instead, set the XLPROG environment variable and use "-e" without "-d".
8. 4C will allow you to define Context Menus for Screen Programs. Two new bootstrap files are used to to this. They are sys.cm_hdr and sys.cm_item. You will need to create these files in your application directory. To get an idea of how you might use context menus, try pressing the right mouse button with the cursor somewhere in a layout other than on a text field in any of the bootstrap development programs. You will of course need to be using a version 3.4.5 or later client as well as a version 3.4.5 or later server. You can get to the ContextMenu definition screens from the options menu, or from the context menu, of the program characteristics screen.
9. There are two new system PCLs for manipulating Context Menus. They are [sys.set_cmenu()]({{< ref "SysPCLs/setcmenu.md" >}}) and [sys.set_cmitem()]({{< ref "SysPCLs/setcmitem.md" >}})
10. The [sys.begin()]({{< ref "SysPCLs/begin.md" >}}) call allows more flags for specifying whether or not to use 4C rcd locking and to specify the transaction isolation level.
11. Using F_FORCE when adding rcds to a client FixSeq file will work correctly.

## 20 September 2001

1. The sys.device and sys.dev_option files will be treated as normal data files that dont have to be in the XLSYSTEM directory.

## 18 September 2001

There is better documentation available on
using external databases.
See
[External Database Files]({{< ref "Features/Database/dbfiles.md" >}})

## 01 July 2001

1. Switch statements can be used in PCLs. The syntax is exactly the same as the C switch statement with the following exceptions: Types do not have to be integral types. Case labels do not have to be constants.
2. You can use pre/post increments/decrements on numeric variables. (i.e. count++,count--,++count,--count)
3. You can specify ActionAreas to hide the unused buttons and to dynamically reposition the buttons as buttons are hidden and unhidden.
4. You might consider using the bootstrap program sys.menu.tv instead of sys.main as your startup development program. Tryit and let me know what you think.

## 14 May 2001

1. Starting with the 3.3.2 release of 4C, the client install will not be included with the server install. If you want your clients to automatically update when connection to your server, you will need to put the client install executable in the lib/clients directory and make sure the correct startup application is enabled. Please note that it is not necessary to install the windows client on an NT 4csrvr system since the client programs are installed with the NT 4csrvr install.
2. An install file for the HP9000 is downloadable.
3. The 4C network messaging protocol can recover from network errors that are not caught at the TCP layer. You should still strive to have a reliable network, but this will be a help in the cases where the network is not totally reliable.
4. It should not be necessary to create a symbolic link to /usr/lib/lib4codbc.so anymore. This library is no longer used and can be removed if it is still on your system.
5. HSplitPanes and VSplitPanes are new screen layout types. The programs demo.sp.pr and sys.menu.tv in the 4c system directory can be used to see how they work.
6. Vertical or horizontal scrolling can be enabled for a main layout or for any sub layout or program detail for the layout.

## 02 February 2001

1. The word4c program will allow you to insert multiple lines in place of a bookmark by using the following syntax in the word4c template file. `BookMark Name=`<name>`,Goto Insert Line1 Line2 etc` The lines to be inserted must start with a tab or a space. The first line not starting with a tab or a space marks the end of the insert. Lines can have special characters like Tabs, Carriage Returns, and Newlines embedded by using the standard C conventions for these characters.

## 19 January 2001

1. Using TCP ports other than the default of 1412 will work for all server programs. In order to do so you need to specify the port in both the _4CSRVRCONFIG file and the XLCONFIG file. In the _4CSRVRCONFIG file you need a line simlar to: `Connect Type=Socket,Port=1414` In the XLCONFIG file you need a line similar to: `FCPort 1414` If the FCPort line does not exist in the XLCONFIG file, then compiling programs and running reports will fail.
2. You can have default titles per application for the sys.get_answer() DialogBox, the Error message MessageBox, and the Info message MessageBox. Add lines to the _4CSRVRCONFIG file in the application area similar to the following: `ErrorWinTitle="4C Error" InfoWinTitle="4C Info" GetAnswerWinTitle="4C Input"`
3. There is a new system PCL, [sys.message()]({{< ref "SysPCLs/message.md" >}}) that is meant to replace both sys.msg() and sys.err_msg().
4. 4c will not allow you to press a cmdbtn unless the 4csrvr is ready for input. Too many users are double clicking on buttons and causing problems in the application. This was especially a problem where the command button executed a shell command and could cause core dumps.
5. Native database support is available for some databases on some systems.
6. The 4c windows client will popup a dialog box when the user presses `<CTL>``<ALT>``<F8>`. This dialog box will allow you to see some current connection information and it will allow you to enter the 4c debugger, exit the current 4c program, end the 4c session and to change the NoErrWait option.
7. There is a new 4c srvr program called 4cchecksum. It can be used with a client program xlcsum to help verify if a network connection is accurate or not. The easiest way to run it is as follows: `xlcsum -c `<connect string>` where `<connect string>` is a normal 4c connection string similar to the following: 192.168.4.22 or Machine=192.168.4.22,Type=TCP,Port=1414` Just typing in xlcsum will give you a list of options. This program can be used to help indicate if problems exist on the network but it wont be able to tell you what to do to fix them.
8. There have been several bugs fixed that caused the 4csrvr to hang when sys.get_answer() was called and the user switched to another program without answering.
9. 4C can be configured to force [sys.get_answer()]({{< ref "SysPCLs/getanswer.md" >}}) to use a DialogBox or to use a Text line at the bottom of the layout. This is done by adding one of the following lines to the _4CSRVRCONFIG file. `GetAnswerType Dialog GetAnswerType Text` These can be overriden per application by one of the following lines in the application section. `GetAnswerType=Dialog GetAnswerType=Text` Each client can also override this with their preferences menu. Experiment with it and you will see how it works.
10. One last sys.get_answer() item. sys.get_answer() will let you force either Text or Dialog box no matter what the server or client settings are by specifying GA_TEXT or GA_DIALOG as one of the flags.
11. MD5 passwords will work as long as PAM is configured for 4csrvrd and the _4CSRVRCONFIG file has a line like: `LogonSecurity PAM` See [Unix Install Notes]({{< ref "Install/unixinstall.md" >}}) for details.

## 07 September 2000

1. A skeleton set of bootstrap files is now shipped with all server installs. They are stored in isdumped format in the lib directory. The isdumped file name is skel.df. To create a new application directory, just create the directory, cd to it, and then isrestor the skel.df file.
2. Using F_DEFAULT when reading files will not cause problems anymore if 4C is not currently processing a display field. However, you really should not use F_DEFAULT except when reading files during field processing on input screens.
3. Sending report output to a client file will work consistently. Previously it failed if used more than once with different starter screens.

## 07 August 2000

1. It is possible to embed layouts within another layout. A layout that can contain other layouts must have a layout type of Container. The Container layout will display scrollbars as necessary. Containers can be used to make the display less cluttered when there are many parts of an application active at a time. By combining TreeView programs and Container Layouts, it is fairly easy to implement a Windows Explorer type user interface. A good example of a program that does this is sys.menu.tv. The layouts that a Container layout can contain is controlled by the application in the following ways. Any layout can be specified as standalone. A standalone layout is always displayed in its own window and is never contained within a Container. A Container can specify exactly which layouts it will contain. These layouts are specified in the Container details and must be other screen layouts. You cannot specify a program as a detail for a Container. A Container with details specified will only contain those layouts. A container with no details specified can contain any layout. A Container can specify the maximum number of layouts that it will contain at a time. If a Container specifies this number and it has that number of layouts open, then any new layouts will be opened in a new window. There are several features still missing that will soon be added to make this look and feel more robust. In particular the following features will be available soon. HSplitPane and VSplitPane layouts that allow sizing two adjacent panes by sliding a separator bar. A better way to specify the initial size of TreeView and Container layouts and sub layouts. A way to have a "Window" menu that allows the user to easily activate one of many layouts within a Container. A way to allow automatic scrolling into view of an input item when user input is needed on that item. Deleting and Inserting items into a TreeView. Currently items can only be added when the TreeView is first created. Allow the application to specify whether a contained layout has a caption or not.
2. Passwords and usernames can be encoded when stored in config files and when passed on the command line. For the ODBC connect string, use EPWD and EUSR instead of PWD and USR. For use with the 4ccl program use -E `<epasswd>` instead of -P `<passwd>`. For the DefaultLogon line in the _4CSRVRCONFIG file use `DefaultLogon * EUsr * EPasswd` or `DefaultLogon Usr * EPasswd` or `DefaultLogon Usr Passwd` or `DefaultLogon Usr` The DefaultLogon passwd never needs to be specified on Unix systems but either `<passwd>` or `<epasswd>` must be specified for Windows NT. To find out the encrypted form of a passwd use the encode4c program.
3. When the 4cclient connects to a WindowsNT system and the users password has expired, the user will be prompted to change their password.
4. ActionArea definitions can now specify how the extra space available is used. You can specify a percentage of it to be used in margins. Any extra space after that is used as extra spacing between the buttons.

## 04 June 2000

1. Multi Column reports that print in "RC" order will work correctly.

## 31 May 2000

1. Several new Program classes have been added in addition to the current None and ScreenProg classes. They are: Update Report TreeView ListView DataEntry ScrollList. See [4C Program Classes]({{< ref "Features/programclasses.md" >}}) for details.
2. cmdbtns and label fields can specify an image to be used instead of the default text. Images should be either bitmap or icon. They need to reside on the server in an application defined subdirectory of the 4c images directory. When needed, they will be copied to the client and a copy will remain on the client for all future references. When specifying an imaging you aso need t specify the width and height in pixels. The normal width and height of a button you may use on a toolbar should be 16 by 16 or 32 by 32.
3. Tooltips can be defined for cmdbtns on 4c screens.
4. Tooltips can be defined for PushButtons in ActionAreas. ActionArea tooltips are sent to the client when a program is first displayed. You should only define a tooltip if the default tip of sys.spca_smsg is not enough.
5. You can specify a layout description in the layout definition screen.
6. Some new flags can be passed to sys.set_busy. They are SB_OK, SB_NOOK, SB_FOCUS and SB_NOFOCUS. If SB_OK is specified then an OK button is displayed instead of the default CANCEL button. If SB_FOCUS is specified, then the OK or CANCEL button will have the focus when the progress bar is displayed. This will make it easy for the user to cancel out of the progress bar with the keyboard instead of having to use the mouse.
7. There is a new system PCL, [sys.input_ok()]({{< ref "SysPCLs/inputok.md" >}}) that can be used to determine if the current field will allow user input.
8. There is a new program state, OpenState, where the application can execute a PCL. This PCL is executed after any output device is opened or any screen layout is displayed. It is not executed for Update programs since they dont have an OpenState. It is executed only once and can be used to do one time initializations such as adding items to a TreeView program or adding items to a sellist field.
9. There are two new system pcls for use with TreeView programs. They are: [sys.tv_add()]({{< ref "SysPCLs/tvadd.md" >}}) which is used to add items to a TreeView program and [sys.tv_getsel()]({{< ref "SysPCLs/tvgetsel.md" >}}) which is used to get the index of the currently selected TreeView item.

## 26 February 2000

1. JISAM has been changed to get rid of certain JISCONFIG size limits. These size limits made it difficult to have many users. The limits do not affect the 2G limit on a JISAM file. You cannot use newer JISAM programs with older JISAM programs.
2. The Win95 client program, w4ccl.exe, will send a message to the 4csrvr at least once every 5 minutes. This should eliminate the problem with some systems that the conection is closed after a certain timelimit with no activity.
3. You can specify that buttons should be activated by the return key in addition to the normal space bar. This is set through the preferences menu on the main 4cclient screen. It is saved in the clseqf.sxl file so it is remembered between sessions. An alternate way of specifying this is using the XLBTNRETURN env var. If set to "Activate", the return key will activate a button when it has the input focus.
4. Error messages from the server will now be displayed in a dialog box. There is an input area that can be used to enter some commands. Currently, the command that are allowed are: `exit4c or quit4c - Exit the 4c client exitprog or quitprog - Exit the current 4c program.` This makes it possible to exit a program that is caught in an error loop without having to run the debugger. THIS IS NOW OBSOLETE
5. The up and down arrow keys can be used on command btns to move to the next or previous field.
6. sys.get_answer() will work with INP_QUICK and INP_UC.
7. When a window is minimized or restored, all windows in the layout will be minimized or restored.
8. There is a new function key, exitlayout, that can be used to prevent users from X ing out of a layout. If this key is not processed by the application, then the default action is to exit all programs in the layout. This function key is sent to the current program when the user presses the X button. It is not sent to all programs in the layout.
9. When a user tries to exit a layout by X ing out, the application is notified that the "exitlayout" key was pressed. If the application catches this key, then the programs in the layout are not automatically exited. If the application does not catch this key, then all programs in the layout are exited with a code of -3.
10. The 4csrvrd daemon can be stopped and started without having to stop all 4c processes. This means that systems that dont free up the tcp port until after a certain timeout period can also have the 4csrvrd daemon process restarted without a problem.
11. You can specify print quality and orientation for printers on an NT system. This is done in the device options for the printer.
12. The title on the 4C Print Window can be specified by the application. Just set sys.prtw_title anytime. A default for the entire application an be set in the application area of _4CSRVRCONFIG by specifying PrtWinTitle=`<title>`.
13. The title on the 4C Shell Window can be specified by the application. Just set sys.shw_title anytime. A default for the entire application an be set in the application area of _4CSRVRCONFIG by specifying ShellWinTitle=`<title>`.
14. The 4c client logon dialog will timeout and exit if no logon is attempted within 2 minutes.
15. Multiple startup apps can be specified in _4CSRVRCONFIG. Just specify Startup=True as part of the application area. Startup apps are run whenever a connection is made to the 4csrvr in the order they are encountered in _4CSRVRCONFIG. The are all run before any user specified application. The main purpose of startup apps is to allow automatic updating of client files. It should not be too hard to find more uses.
16. You can safely set break points in the FocusPCL of a program and it will not go into a loop.
17. Fields modified on scrolling screens will display immediately without the user having to click on the item.
18. There is a new system PCL, [sys.exit_layout()]({{< ref "SysPCLs/exitlayout.md" >}}) , that can be used to exit all programs in the current layout.
19. A new flag, F_FORCE can be passed to sys.upd_file(). When used this prevents 4c from reading a file that has not yet been read in the requested update mode. This is most useful when adding records that you know cannot exist. You can skip the sys.read_file() call and then do an update using F_ADD|F_FORCE. This significantly improves the speed of adding records to files across a network. This flag should not be used when rcd locks are needed.
20. A bug in xled that allowed it to be out of sync with 4csrvr has been fixed.
21. The 4C Client will notice when a display fields options change. If the option set is "ignore", the display field will be hidden and will not be processed by the 4csrvr. Display fields can be hidden and then made visible using sys.set_dfoption(...,"ignore) and sys.set_dfoption(...,"no ignore").
22. No Echo should work correctly for any display field.

## 08 September 99

1. A very serious bug that can cause programs to core dump unexpectedly has been fixed. This bug only manifests itself when a "Startup" application is run, and then another application. If you want to continue running an older version of 4C, disable the Startup application in _4CSRVRCONFIG and reenable it only after this Server is installed.
2. Compiling multiple programs/files/layouts is much faster.
3. The file definition changed for some system files, so please export/import them into your application. Some of the changed files include: `$system sys.program`
4. The placement of the window where adding takes place can be controlled in the layout definition detail for each scrolling program. The default is to use the clients preference, which can be set to Top/Bottom/Relative. The default for the clients preference is Relative.
5. A bug in [sys.dr_restart()]({{< ref "SysPCLs/drrestart.md" >}}) that kept space in the 4C Utility Sequential File from being correctly freed has been fixed.
6. There is a new system PCL, sys.get_dotaddr(), that returns the network address of a particular 4cclient in dotaddr notation. The client is identified by its 0 based index in the 4c user table.
7. The way that cmdbtns work is a little different than before. Previously, a cmdbtn in a ScreenProg with all DiplayOnly fields would wait for input on that field even if it was DisplayOnly. Now, for a cmdbtn to be able to receive the focus and wait for input depends on whether or not it is a DisplayOnly field. A literal used as a cmdbtn must be explicitly set to NoDisplayOnly in order for that field to wait for input. This change could possibly cause problems with a select few programs. Look for programs with all display only fields and cmdbtns that are either explicitly set to DO, or literal cmd btns that are not explicitly set to NoDisplayOnly. For cmdbtns to work properly, programs will need to be recompiled.
8. 4C will allow you to save up to 100 different connections on the connection menu. On WindowsXXX, these connections are maintained in the registry and you can safely delete unneeded connections with the registry editor. The key to use is: `HKEY_CURRENT_USER/Software/4C Software/4C Client/CurrentVersion`
9. Scrolling programs will allow sys.stack_input() for add/modify/delete function keys.
10. The 4cclient program, [w4ccl.exe]({{< ref "Clients/w4ccl.md" >}}) accepts an "-f `<filename>`" option for specifying an alternate clseqf.sxl file. This makes it possible to run multiple 4cclients on the same client machine without interfering with each other. I suggest maintaining the ".sxl" extension and keeping all ".sxl" files in the same directory. Be aware that you cannot use multiple client seq files if the clients are using the same shared memory area. Either setup separate shared memory segments for each client or do not use shared memory at all. By default, the client will not use shared memory unless you installed a 4csrvr on the same machine as the client or if you modified the 4c.cnf file.
11. There are 2 new utility programs, [4cmsg]({{< ref "Util/4cmsg.md" >}}) and [4cshutdown.]({{< ref "Util/4cshutdown.md" >}})
12. There are Html documents available for the [4cutilities]({{< ref "Util/_index.md" >}}) and for [the 4c client programs]({{< ref "Clients/_index.md" >}})

## 28 July 99

1. A serious shared memory bug has been fixed. When 4c would allocate a program in user memory instead of in sys memory it would lose use of that program slot. If this happened enough, then the system would seem to slow down and possibly cause other problems as well. It is probably a good idea to use [xlview]({{< ref "Util/xlview.md" >}}) -V to see if the shared memory is tuned correctly, especially on systems that remain running for many days at a time.
2. Trying to access an ODBC file using an illegal keynumber will produce an error message rather than reading the file by primary key.
3. [sys.cmp_file()]({{< ref "SysPCLs/cmpfile.md" >}}) and [sys.cmp_data()]({{< ref "SysPCLs/cmpfile.md" >}}) will work correctly on integer,date, and time fields now.
4. [xlview]({{< ref "Util/xlview.md" >}}) with the -V option will produce a lot more information. This can be helpful in tuning the amount of shared memory to use and setting program and file slots.
5. Only one Win95 4cclient can access the clseqf.sxl file at a time. For now that means only one Win95 client can run at a time on a single pc, but in the future there will be a way around this to make testing easier.
6. Setting item colors in scrolling programs will work correctly even if the driver is sorted.
7. Scrolling program driver rcds will be updated on the screen correctly.
8. The word4c program will work correctly without hanging or causing winword to hang.

## 21 April 99

1. QuickInput will work on input fields.
2. The clseqf.sxl file should be stable now. If the 4C client detects that it was not completely updated then it will recreate it.
3. You can specify a "startup" application to be run everytime a client connects to a 4csrvr. Do this by specifying "Startup" for the application name.
4. You can specify an icon to use for your application by putting the line "Icon=`<appdir>`/`<iconfile>`" in the _4CSRVRCONFIG file under the appropriate application. If the file "HOME_4C/images/`<appdir>`/`<iconfile>`" exists on the client, then that icon file is used. Otherwise, if the file "HOME_4C/images/`<appdir>`/`<iconfile>` exists on the server exists it is used for the icon. If neither exist, then a default windows icon will be used. You should store your icons in your own subirectory of the images directory.
5. The client will only create one entry on the taskbar for each 4C group, instead of one for every layout.
6. There are several new fields in $system. They are: sys.sv_ver - 4csrvr version num as an integer. sys.cl_ver - 4cclient version num as an integer. sys.sv_clver - Client version that this server has available. sys.sv_ostype - Server Operating System type. Currently, this can be one of "UNKNOWN", "UNIX", or "WINDOWS". sys.sv_osname - Server Operating System Name. This will vary among platforms. sys.cl_ostype - Client Operating System type. Currently, this can be one of "UNKNOWN", "UNIX", or "WINDOWS". sys.cl_osname - Client Operating System Name. This will vary among platforms. sys.cl_type - Client type. Currently, this can be one of "None" or "WIN95".
7. Scrolling Programs can now specify an alternate fg/bg color to increase readability of busy screens. When used, alternating scrolling items will use the alt colors. This is specifiable in the layout detail definition.
8. Scrolling programs can frame items to increase readability of busy screens. This is specifiable in the layout detail definition.
9. Scrolling programs can specify only a single item can be selected at a time. This can be set globally for all layouts using this program, by specifying it in the program characteristics. It can also be specified in the layout details for a single layout. The most likely place to specify it is in the program characteristics.
10. Any program can have its own caption area, in addition to the caption of the layout. When the program is active, this caption will be highlighted. This can be used to make it easier for a user to see which 4C program is the active one. This probably will be used only when several linked programs are visible on the display at once.

## 27 March 99

1. There is a new place PCLs can be called from. It is called the focus PCL and is executed every time a ScreenProgram gets 4C Control. This will happen after the init PCL for all Screen Programs and it will also happen every time control goes to another 4C program and returns. If the 4C program is still running but is no longer in an open state, it will not run. A 4C program is considered open only after the InitPCL has executed and up until the EndPCL executes. This is especially useful in TabLayouts that automatically link between windows. This PCL can be run to see if certain important application data has changed so the current program can respond to these changes.
2. The system pcl [lsh()]({{< ref "SysPCLs/lsh.md" >}}) will accept a second argument now. The argument is an integer set of flags that can be one of LSH_WAIT, LSH_NOWAIT, LSH_DEFAULT. If this argument is not present, then LSH_DEFAULT is assumed. Neither LSH_DEFAULT or LSH_NOWAIT will wait for the program to finish executing before returning control to the application. This is the way that xled is called from the pcl maintenance program. You should use LSH_WAIT if you need to wait for the program to finish before continuing in the application.
3. Files can be opened in binary mode using [sys.open_file]({{< ref "SysPCLs/openfile.md" >}}) (`<file>`,F_BINARY...). Files opened this way can only be read in sequential mode with or without a driver, or in ADD mode with data added to the end of the file. When copying data between files in binary mode, you need to use [sys.copy_file()]({{< ref "SysPCLs/copyfile.md" >}}) or [sys.copy_data().]({{< ref "SysPCLs/copydata.md" >}}) See the system program sys.file.xfer for a useful example of using binary files.
4. Files can now be local to the client. Only VarSeq, FixSeq, and any file opened with F_BINARY can be used this way. This is mostly useful when a local file is needed by a program started by the [lsh()]({{< ref "SysPCLs/lsh.md" >}}) system PCL. A client file is specified by using "%client!" as the first part of the external file name. The sys.file.xfer program is a useful example of using a client local file.
5. Timeouts and alarms now work.
6. [xlview]({{< ref "Util/xlview.md" >}}) will display the network dot address of the client instead of ttyname.
7. The help key will run the sys.help program if the the help key is not caught. It will always run sys.help in the directory of the currently running program. Right now, sys.help is not much better than the character version but it will soon be integrated with MS WinHelp. Rather than catch the help key and run a pcl, your application should provide its own version of sys.help in the application directory.
8. The [sys.copy_data()]({{< ref "SysPCLs/copydata.md" >}}) and [sys.copy_file()]({{< ref "SysPCLs/copyfile.md" >}}) system pcls will return the number of bytes copied if used on binary files. Otherwise, the return is still always 0.
9. [sys.open_ldata()](https://www.4csoftware.com/docs/SysPCLs/openldata) can specify LD_NOWAIT now. This is useful if many connections are opened.
10. A new option in the _4CSRVRCONFIG file can be specified. ExecProg can be used to have the 4csrvrd start up processes when it starts. The single argument is the process name and process args separated by commas. This should have many uses, including removing temp files and starting background processes.

## 27 March 99

1. A bug in TabFolders that caused problems in some scrolling screens has been fixed.
2. Several minor bugs have been fixed.

## 14 Dec 98 - Documentation

1. There is a proposal for a new style of 4C reports that can be read and commented on. See: [New Report Style Proposal](https://www.4csoftware.com/docs/Plans/rptprop.html)

## 08 Dec 98

1. This client (including xled) should work with previous versions of 4csrvr.
2. There is a new feature in 4C that allows linking of data between 4C applications on different servers and between 4C applications and external applications that have a DDE interface. See [Sharing Data With External Apps]({{< ref "Features/ldata.md" >}})
3. The [w4ccl]({{< ref "Clients/w4ccl.md" >}}) program will accept options to specify connection, application, program, and startup options. They are: -c `<connname>` - valid connection name for this client -a `<appname>` - This will automatically start `<appname>` after connection and automatically exit the client when the last application program exits. -p `<program>` - run this program instead of the default app program -o < min | max | hide >
4. System Scratch Files will be preloaded into SysMem if the SysScratch option is used in XLCONFIG.

## 08 Dec 98

1. Non Scrolling progs can use Display Relative.
2. The `<cancel>` key will work in sys.get_answer().

## 15 Sept 98

1. On NT, you can use different user names now.
2. sys.tty_name can now be used to uniquely identify a client that is currently logged in. It will be an 8 digit LFZ number like "00000000" or "00000081". It is not guaranteed to stay the same each time the user logs in, but it can be used as a key to a file. The purpose of this is to make porting old 4c programs easier.
3. You can specify how often you want the clients display updated. Do this by setting ClUpdAlarm NSEC in your 4CSRVRCONFIG file. The default value is 60. The server checks this value every time it checks for msgs from the client. If necessary, it will flush its buffers including any current sys.msg. If you never want the server to send data to the client until it is absolutely necessary, set this value to -1. If you want the server to flush its buffers every time it checks for data from the client, set this value to 0. Otherwise, set it to the number of seconds you want to pass before data is flushed. Even when set to 0, all sys.msgs are not written to the client. Only the current sys.msg is written when the server is checking the client for messages. To force writing of all sys.msgs, you need to call sys.upd_client() after your sys.msg(). This is probably unnecesary and setting ClUpdAlarm to 1 or to 0 should be good enough for the cases when you want as many sys.msgs as possible to reach the client.
4. You can use progress bars in your programs. There are 3 PCLs for starting, stopping, and changing labels/titles in your progress bar. They are: [sys.start_busy()]({{< ref "SysPCLs/startbusy.md" >}}) [sys.set_busy()]({{< ref "SysPCLs/setbusy.md" >}}) [sys.stop_busy()]({{< ref "SysPCLs/stopbusy.md" >}})
5. The client can turn automatic help on or off from the preferences menu. If help is off, then pressing the help key will display the short help message. Pressing it again will call the Applications help routine.
6. There is a new system PCL that allows you to use the Client to choose a color. It is [sys.choose_color()]({{< ref "SysPCLs/choosecolor.md" >}})
7. Tab Folders have been improved a lot and they now work well with pushed windows inside of the tabs also.
8. You can now modify only a single or multiple columns when modifying scrolling fields. You can start column modify mode when you are in modify mode by either pressing the modify key or by double clicking on the border area of the modify area. You can add fields to modify by double clicking on them when you are already in column modify mode.
9. There are 3 new system pcls that allow you to control colors in your programs. They are: [sys.set_prcolor()]({{< ref "SysPCLs/setprcolor.md" >}}) [sys.set_dfcolor()]({{< ref "SysPCLs/setdfcolor.md" >}}) [sys.set_dricolor()]({{< ref "SysPCLs/setdricolor.md" >}})

## 4 May 98

1. You can use "h","t","m", or "b" in numeric input in order to quickly specify large numbers. 1b = 1000000000 1m = 1000000 1t = 1000 1h = 100
2. You can specify `DefaultLogon `<user>` [`<passwd>`]` in the 4CSrvrConfig file. Under Unix the `<passwd>` field should not be specified and under NT it must be. Specifying DefaultLogon allows all of the 4C daemons, except 4csrvr, to run without needing to prompt for a passwd. This is useful especially when one 4csrvr needs to read files from another 4csrvr. It is also useful for running compiles from the cmd line.
3. Blocking type of CSV can be used to specify comma separated data file for VarSeq files only.
4. Reports can be sent to a local client file as well as a local client printer. For either, set the sys.dev_cllocalf to "y". You will probably want to set the extname to %prompt to alow the user to choose the local file or printer.

## 5 Mar 98

1. The 4C debugger can now interupt a tightly looping application. The interupt may take a few seconds to stop the process, but it will eventually stop it.
2. You can set 2 new srvr env vars that allow the system to determine the century if only "yy" is specified in a date entered by the user or in a sys.fmt_date() stmt. They are XLYYNEXT and XLYYPREV. If set they should be set to a full yyyy year. If you want all "yy" <= 80 to mean 20yy instead of 19yy then set XLYYNEXT=1980. If you want all "yy" >= 50 to mean 19yy instead of 20yy then set XLYYPREV=2050. Note that this second example wont mean anything until the year 2000 since the default is for 4C to use current century for all "yy" years. When doing the conversion, 4C first checks XLYYNEXT and if conversion is necessary it does it. It will only check XLYYPREV if no conversion was done using XLYYNEXT.
3. The 4cclient and 4csrvr are much better at terminating if the TCP connection is terminated by the other process. This means no abandonned processes hanging around eating up resources.

## 20 Jan 98

1. TabFolder layouts can exec programs instead of linking them. Linking them is still the default. To specify that programs use exec instead, set the flag in the Layout definition.
2. The 4C Debugger works and is greatly improved over the old version.
3. You can specify a single character accelerator for Program FKeys. This ONLY works with scrolling programs. The debugger uses this feature for stepping/continueing.

## 05 Dec 97

1. A display alarm can be set so that modified display fields are sent to the client. This works similar to the old -a option of excel. You can set this alarm with a line in the _4CSRVRCONFIG file that looks like: DpyAlarm NSEC If this is not set, then the Server will wake up every 60 seconds when not busy in order to check for modified display fields. If you dont ever want the server to check for modified display fields, then set NSEC to 0.
2. DR_RENUMBER has been implemented

## 14 Nov 97

1. xlbuild allows a -R option to rebuild everything. It causes xlbuild to recreate the svseqf.sxl file and then compile all files, all programs, all layouts, all action areas, all menubars, and all menus. The catg option can still be used to limit the programs and files that are compiled.
2. The -d option of xlbuild works correctly now.
3. The s_dftype and s_prtype files can and SHOULD be in your own program directory. If you modify the ones in the system directory, you will lose any changes you make to them.
4. Scrolling programs and non scrolling programs use different default layouts, named Default and ScrollDefault. These layouts can be redefined in your own program directory.
5. xlexport can now export layouts, action areas, menus, and menubars. xlimport can import them. See the help message with xlimport and xlexport for syntax.
6. xlbuild can compile layouts, action areas, menus, and menubars. See the help message with xlbuild for syntax.
7. The startup delay of [w4ccl]({{< ref "Clients/w4ccl.md" >}}) and xled has been fixed.
8. sys.msg() messages do not get sent to the client immediately. Only the last sys.msg() is saved and sent whenever the server flushes its output buffer. You can force the buffer to be flushed by calling sys.upd_client().
9. The sys.set_dfoption() system pcl now allows "ignore" or "no ignore". This is useful for dynamically turning off cmdbtns at runtime. It should only be used in the Init PCL because the client only checks it once.

## 28 Oct 97

1. There is a new system pcl sys.upd_client() that forces all waiting msgs to be sent to the client. This may be useful if you need the client to see sys.msg() messages immediately. Normally, they are buffered until the buffer is full or some other input is needed from the client.
2. A program fkey can be specified as program only. This only makes sense for scrolling programs and means that the pcl will be executed when the program is in display mode only and the fkey is pressed. During field processing in add or modify mode the fkey will not run the program only PCL. It will retain its default processing.
3. The Windows95 Client Install is a "REAL" Windows type install.
4. The Client clseqf.sxl file can be built by calling the bootstrap program sys.clinfo.send. Once built, this file can be distributed to any client machine using the same servers.
5. There are 5 new system pcls meant mostly for system use. They are: `sys.send_slo() sys.send_smb() sys.send_ssdi() sys.send_sact() sys.send_smenu()` They are used for building the clseqf.sxl file on the client so that it can be distributed among multiple clients. For more information see the bootstrap program sys.clinfo.send.
6. All passwords sent across the network are encrypted.
7. The W95 Client will allow saving of usrernames and passwords.
8. The following utilities will work on remote files without JISAM being installed on the client: `xled xlcopy xlcr xldel xlflgrep xlflrpt xlkeys xlscopy xlset xlupd`

## 22 Sept 97

1. NoShare will work for W95 Clients.
2. scrolldet fields that are labels will work correctly.
3. Main layouts can specify ignoring the msg area. Any msgs will appear on the next higher level layout.
4. The update speed of xled across a network has been greatly increased.
5. You can specify Foreground and Background colors for individual controls and for scrolling programs. See the Colors doc for details.
6. The system PCL sys.kill_win() takes a second arg as an exit code for the killed prog. If not specified, then the killed progs exit code is -3.
7. There are 4 new system pcls. They are: sys.exit_level(int code) This exits all progs linked to the current prog. sys.dr_setsel() This allows you to select or unselect a rcd in the current list of rcds selected by the user. sys.dr_selcount() This returns the number of rcds currently selected by the user. sys.dr_readsel() This allows you to read one of the rcds currently selected by the user.
8. You can now load 4C on any drive for WindowsNT/Windows95.
9. You can use sys.set_dfoption(DFLABEL,"no verify"); to turn off client side verification of an inplist display field. To turn it back on, use sys.set_dfoption(DFLABEL,"verify");

## 11 Sept 97

1. There are five new s_dftypes. They are: inplist rblist lrblist chkbox lchkbox See the Screen Layouts document for details.
2. Resizing layouts will work.
3. When connecting to a server, you will need to provide a logon name and password.
4. The jisam.shr (NT/Win95 only) file will be removed when no users are accessing jisam shared memory.
5. The 4c.shr (NT/Win95 only) file will be removed when 4c shared memory is not in use.
6. There are 2 new fields in sys.dpy_field. They are: sys.df_dpylabel This should be set when using a CheckBox or RadioGrp field. sys.df_maxitems

## 31 July 97

1. Programs run on NT with the system pcl sh() will no longer create a window. This fixes the problem of a window appearing and disappearing on the console every time an external prog was started.
2. Layout info can be stored on the client. This speeds up initial access when starting a layout for the first time. The file this is stored in is clseqf.sxl. The info that gets cached on the client can be configured thru the preferences menu.
3. The XLSEQFILE name is changed to svseqf.sxl for both Unix and NT systems.
4. Typing a single char in the edit field of a sellist now works correctly.
5. ActionAreas, Menus, and Menubars can now be compiled. These are not really compiled, but they are timestamped and Clients will reget them from the server the next time they are used. This means you dont need to exit 4C in order for these changes to be seen.

## 18 July 97

Instead of specifying max width and height for layouts and overlay
members,
you now specify a percent relative width and height.
For layouts, the percent width or height is relative to the full
display.
For an overlay member,
it is relative to the width/height of the containing overlay.

## 17 July 97

1. The actual spc (user fkey) can be dynamic in Action Areas. The 4C client will calculate what SPC to use based on the spc order. To use this type of SPC, specify "dynamic" as the spc name in the action item definition. You should also specifyy Dynamic? "y" in order for the label of the button to be dynamic as well.
2. Top and Bottom can be specified in scrolling screens using the t,T,b,B characters.
3. The up and down arrow keys, `<keyup>` and `<keydown>`, can be used by 4C programs as long as the control key is pressed at the same time. This allows browsing to work on text fields.

## 14 July 97

1. There is a new system PCL that runs a prog on the client machine. This is [lsh().]({{< ref "SysPCLs/lsh.md" >}}) It works the same as sh() except it runs on the client machine. This is the way that xled is started on the client machine from the sys.ps.maint program.
2. There is a new PCL that allows the server to access the client environment. This is sys.get_clenv(). It works the same as sys.get_env() except the environment is obtained from the client.
3. scimport will work from 4C windows now. In fact any shell script that needs input or displays output will run. After the script runs, you may need to enter a return from the output window.
4. There is a new SysPCL, sys.run_layout(). Use sys.run_layout to start a layout that you want the next ScreenProg program to run in. You most likely will use this in the InitPCL.
5. There is a new s_dftype, "ignore", that allows you to leave display fields defined but not have them appear when a ScreenProg is displayed in a layout.
6. Layouts can be positioned relatively on the screen using the Initial X and Y pos. These positions are a percent position, so X 0 means all the way to the left and 100 means all the wat to the right. The Overlay cur flag can also be specified if this layout should overlay the current layout.
7. A layout can be closed now from the Close entry on the system menu or from the X. This will KILL all 4C programs running in the layout. Any 4C program killed this way will set $wexit_code to a negative value so the calling program can check.

## 27 May 97

1. The default background for lists has changed from white to the normal 3D Background color. This was due to too much flashing when displaying 4c scrolling screens. You can still get the white background by setting the XLLISTBACKGROUND env var to White.
2. There is a font def file in the 4c lib_dir that is used by default. It is called 4csfont.def. You can use your own by copying this file to the 4c etc_dir and modifying it. If you put this file in another directory or call it by a different name, you must set the XLFONTFILE env var to point to it. The one modification that you will need to make is the PointSizeInc. Set this to something reasonable for your display. I thought that by specifying PointSizes for fonts, I would avoid the hassle of figuring out what size display was being used. I still plan to do something else with fonts, but am not sure what yet. Be careful to separate fields with tabs, not spaces. USE AN EDITOR That ALLOWS this. MS-DOS edit WILL NOT work. Notepad WILL work.
3. You can define your own function key usage if you dont like the default. In order to do this, copy the 4cfkey.def file from the 4c lib_dir to the 4c etc_dir and modify it. If you put it in a different directory or call it something different, then set the env var XLFKEYFILE to point to it.
4. The sellist dftype can be specified for non choice fields now. There are two new system pcls for clearing the list and for adding to the list. They are sys.dflist_clear(DFLABEL) and sys.dflist_add(DFLABEL,`<string>`). These PCLs CANNOT be called from the InitPCL, so even if you have a list that wont change during the course of the program, it should be set after the InitPCL. The 4C Bootstrap program sys.prog.mstr has an example of this for the sys.catg_name field.
5. It is no longer necessary to specify the asprog field in the screen overlay definition. The slh.fm program makes use of this feature by defining only one sah.srch ovly but any of the 4 sah.srch asprogs will use this ovly.
6. The sys.prog.mstr program will let you get to the Screen Layout Def thru `<user1>`.
7. The screen overlay definition allows you to specify how extra space is used when a program has more space than needed. You specify a percent of the space to be used up by the 4 margins. Any left over space then is divided equally across the display.

## 20 May 97

1. Multiple servers can be specified in the XLCONFIG file. Only one can be connected to at a time. The sample XLCONFIG files show how to do this.
2. Multiple Applications can be specified per server. Only one application can be open at a time though. This is specifield in the 4CSRVRCONFIG file and the samples show how to do this.
3. Recompiling programs will force automatic recompile of any layout using that program.
4. You will not need to restart the 4C Client in order for layout changes to take affect.
5. Recompile of a sub layout will automatically compile all higher level layouts as well.
6. The [w4ccl]({{< ref "Clients/w4ccl.md" >}}) client does not look at s_fontdef.xl anymore. Instead it looks at a sequential file, 4csfonts.def in the 4c etc directory, or specified by the XLFONTFILE env var. You can edit and modify this file, but be aware that I plan to change the format of it in order to make it more readable.
7. The [w4ccl]({{< ref "Clients/w4ccl.md" >}}) client does not read any local 4C files (of course xled does), so a 4c client that does not call xled does not need JISAM.
8. Deleting rcds without the F_NOMSG will prompt if Delete OK.
9. The missing shlib problem using the SCO server has been fixed.
10. There have been minor changes to the 4cclsrvr.txt and 4cslo.txt docs. There are new docs as well.

