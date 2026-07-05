# Most Recent Changes

## 05 March 2018

Version 5.8.8-02 and higher

- Setting an LVItem to "ignore" in the InitPCL will work correctly
- When the FCClient application becomes active after executing a sys.cl_open() message with WAIT, it will inform the 4cserver so the program that called sys.cl_open() will continue executing.

## 07 March 2016

Version 5.6.5-02 and higher

- The funny loss of focus when switching between 4C and Non 4C Windows has been fixed.
- The fg and bg colors for display fields will default correctly from the sdftype, except for cmd btns. Changing the color of cmd buttons really messes them up, so just use the default color.
- I've notice funny changes in Fonts in the latest "El Capitan" version of MacOS.
- The "El Capitan" version of MacOS also does not allow changing the Font of a ListView Header item.

## 27 January 2016

Version 5.6.4-03 and higher

- Due to MacOS changes in El Capitan, the default install directory for the FCClient is now /usr/local/4c instead of /usr/4c. If you've changed files stored in /usr/4c, you may need to migrate them to /usr/local/4c. You may need to even find them in some MacOS quarantine directory.
- When run, if there are no connections defined, then the Connection Dialog will open and you can create a new connection and even set it to be the default connection to always use. This should make it easier for end users to install and configure the client on their own.

## 04 May 2015

Version 5.6.0-19 and higher

- The password change dialog is implemented.
- A GUI PCLEditor is implemented. It uses the pcltext font in the 4csfont.def file if it exists and list if pcltext does not exist. Implementing this required some changes to some of the base 4C classes which I hope do not affect any applications. In order to use this GUI editor the servers you connect to must have minimum version 5.2.9-08 bootstraps programs sys.ph.maint sys.prog.mstr sys.pcl.edit These programs can be downloaded and insstalled on a 5.2 server from here. [sysphmaint-528.df.gz](https://4csoftware.com/downloads/Misc/sysphmaint-528.df.gz) If not already on a mod in the 4cSys Application you will need to add them to a mod before running xlimport.
- Some default function keys have changed to better match the MacOS X style guid. In particular, find, findnext, findprev, replace, and info.
- Several unreported bug fixes.

## 02 March 2015

Version 5.6.0-18 and higher

- Clicking on a chkbox or rblist item in the current window will correctly switch the state of the dfield if the 4csrvr will allow input on that field. Otherwise the state (and the field value) will remain unchanged) Previously, clicking only advanced to the field without changing the state at the same time.
- Disabling a panel will correctly disable all dfields within the panel and all subpanels they will stay disabled until the panel or the dfield is explicitly enabled. Any dfield that becomes the current input dfield will be enabled automatically with the application having to explicitly enable it.
- The default widths for sellist, inplist, and rblists is more accurate.
- sys.choose_color() works
- sys.cl_browse() works
- sys.cl_restart() works

## 11 February 2015

- There are 3 new preferences that control whether a new instance of the MacOS X FCClient will automatically connect to a specific 4CServer and Application They are EnableAutoConnect AutoConnectServer AutoConnectApplication When EnableAutoConnect is True and there is a valid AutoConnectServer, the MacOS X FCClient will automatically connect when it first launches, and if it connects successfully and the AutoConnectApplication is set, it will run automatically. Any of the following can be used to override AutoConnect Specify --noautoconnect as an argument to the MacOS X FCClient Specify -c `<connection>` as arguments to the MacOS X FCClient Set the EnableAutoConnect preference to False
- If the users preferences allow multiple sessions to run, then the FCClient DockMenu will allow you to launch a new instance. If you are already running the max number of sessions allowed, the FCClient DockMenu will not show this option.
- Startup Applications specified in the server 4CSrvrConfig file will run without crashing the MacOS X FCClient.

## 03 February 2015

- You can paste in xled without it crashing
- Reconnect Dialog is implemented.
- Set the color of a checkbox works without resetting the label to it's original value

## 05 January 2015

MacOS X FCClient Version 5.6.0-13 and higher

- Application icons can be set on the server by installing 2 files at the same location as the `<appicon>`.ico file. These files should be a std resolution png image and a high resolution png image. The should be named `<appicon>`.png and `<appicon>`@2x.png. Using resolutions 128x128 for `<appicon>`.png and 256x256 for `<appicon>`@2x.png work well. You do not need to modify the "Icon" entry in the 4CSrvrConfig file. FCClient.app will automatically try to fetch the correct png file first, and if not found, it will still fetch and use the .ico file. The appropriate app icon file will be stored permanently on the client machine just as it is when using Win32. The app icon will display in the dock when FCClient.app is connected to the applicstion and it will display on all error messages as well. It is not permanently associated with FCClient.app so it does not show in finder and it only shows in the dock when the specific application is open.
- When using images for a layout background, panel background, or an image sdftype on a Retina display, the FCClient will first look for an image named `<image>`@2x.`<ext>` and use that if found. If the high resolution image is not found, then the lower resolution one will be used. Wherever possible, you should provide high resolution images as well as the standard resolution images. Images used on buttons, labels, and treeviews do not currently look for high res images, but sometime in the future probably will. URL images do not check for high resolution images either.
- Client Timouts work now. There shouldn't be any noticable difference in the way they work on MacOS X and on Win32.
- Dynamic positioning of Layouts, sys.message() alerts, and sys.get_answer() dialogs has been implemented.
- Instead of the 2 Options and Util menus on the Main Menubar, there is a menu that with the same name as the current 4C Application, or "AppMain" if there is no open 4C Application. This menu has all the items on it that the Win32 menubar has except that and item with the name of "File", "Edit", or "Window" has been removed. Not sure if this will be a permanent feature or if it will evolve a bit. It all depends on getting some feedback. It may be worthwhile leaving either the "Options" menu or the "Options" and "Util" menus on the main menubar to provide quicker access to the most common 10 or 20 FKeys. I tried to bolden the font of this entry on the Main Menubar, so it would be more noticeable like the "FCClient" menu, but Mac OS X won't allow changes to it. For now, at least you have access to everything from the menubar that you do on Win32.
- There is a Client preferences dialog.
- The FontSizeInc Client Preference works on all fonts, even those that have specified a point size of Regular, Small, or Mini. This may or may not be a good idea because some controls may need to use one of the exact Regular, Small, or Mini sizes to work best. So, keep this in mind if it looks like a problem.
- The QuickConnect dialog is implemented.
- All, or at least most FCClient dialogs try to use the app style guide in regard to button placement. This brings up an issue in difference between Win32 and MacOS X style guides. Win32 expects "OK" on the left and "Cancel" on the right, but MacOS X expects the right side buttons to do something and the left side buttons to cancel and action or have no effect. This might mean coming up with a mapping of the bottom action area to appear different on MacOS X or something of the sort. Just something to think about for now.
- Multiple instances of the FCClient.app can be run at the same time.

## 08 December 2014

MacOS X FCClient Version 5.6.0-07 and higher

- Images on cmdbtns has been implemented.
- Tooltipes on cmdbtns has been implemented.
- Images on labels has been implemented
- Images on Treeviews have been implemented.
- Hiding a DisplayField with a side or top label will hide the label also.
- sys.set_dflabel() will work on chkbox display fields.
- The space character can be used as an accelerator in list/listview programs. The 4C Debugger uses the space character when stepping through lines of a PCL.
- Sizing of display fields with labels in Panels that increase child sizes as the panel size increses works better.
- Children of overlay panels will use the entire allowable space and only one child will be visible at a time. All other children will be completely hidden.

## 01 December 2014

MacOS X FCClient Version 5.6.0-06 and higher

- Cut and paste has been implemented. CBC_DIF currently gets mapped to a "Tabular Text" format since that is what the "Numbers" spreadsheet program on MacOS X accepts. I'm open for suggestions if this needs to be done differently.
- ListView Column sizing is improved, especially for very narrow columns.
- A sizing issue with rblist DFields has been resolved.

## 24 November 2014

MacOS X FCClient Version 5.6.0-05 and higher

- Column Modify Mode is implemented for scrolling scree programs. It works a little different, but is a lot cleaner than the WIN32 version. Basically, when in Modify mode, pressing `<modify>` during input will enter Column Modify mode if it is not on and otherwise it will toggle the Column Modify status of the input field. Toggling the last ColMod field to off, turns off ColumnModify field. Pressing `<cancel>` on the first ColMod field also turns it off. When in Column Modify mode, you can tab to or single mouse click on ColMod fields to allow input on those fields. You can then select them for ColMod by pressing the `<modify>` key. Double clicking a display field to toggle ColMod mode for that field is not supported on the MacOS X FCClient.
- Repeat and RepeatAll is now implemented.
- Scrolling programs that call other programs in the main fld loop will run faster now.
- The Window menu is back and working better. Still unsure whether whether some emtries on the View Menu belong on the Window Menu, especially the "Move" entries. Feedback appreciated.

## 11 November 2014

MacOS X FCClient Version 5.6.0-04 and higher

- Printing an image of the current 4C window has been implemented.
- Printing locally to a window or to a printer has been implemented.
- There is a Connection Dialog for creating and modifying connections. You don't need to edit this file by hand anymore.
- The sellist control is implemented as an NSComboBox rather than an NSPopupButton. It looks and works better.
- The Window menu has been removed. I may put it back if I can come up with a way to only list the windows that you can actually navigate to. You can still navigate between different windows using the standard MacOS X window navigation key.

## 18 August 2014

MacOS X FCClient Version 5.6.0-03 and higher

- Shell commands run on the server that display output and get input from the 4CClient work.
- The Session Control Dialog is accessible using `<Ctrl>`+`<Command>`+`<F8>`
- Multiline text allows scrolling if all the lines do not fit in the text area.
- Some control sizing problems have been fixed.
- xled will map the delete key to a backspace on MacOS X.
- Some layout sizing issues have been improved.

---

## 4C - MacOS X Beta Client - Issues

## 24 November 2014

- Dynamic positioning of layouts is not currently implmented Implemented as of 02 January 2015
- Reconnect has not been implemented yet.

---

## 4C - MacOS X Client Install

## 28 July 2014

The MacOS X 4C Client Install is distributed as a package file.
Any user with proper sudo credentials should be able to install it
simply by downloading and then double clicking the FCClientInstall-vrl-nn.pkg file.

The Alpha release does not implement all functionality of the Win32 4C Client
and some things will need to be done manually.
The following summarizes most of the issues that you may encounter.

- If the install fails, please look at the /tmp/FCClient-Install.txt for possible reasons.
- This install has only been tested on MacOS X 10.8 and MacOS X 10.9. It may or may not work on earlier versions, but I have no way to test it on earlier versions.
- The MacOS X FCClient has not been tested on very many different display sizes and resolutions.
- In addition to writing to /Applications/FCClint.app, the install will also write to /usr/4c - This is the default HOME_4C directory, but if necessary, though not recommended, you can change it before the install by setting the HOME_4C env variable so that all users that access the FCClient application have it set to the same directory. A symbolic link to the FCGUICommon.dylib shared library is created in /usr/local/lib
- Currently, there are no GUI Dialogs for creating connections and setting preferences. However, both preferences and connections are stored in simple text files that are easily edited and can even just be copied from a WIN32 system. Connection Dialog implemented as of 560-04 - 11 November 2014 Global preferences and connections are saved in the HOME_4C/share directory and user specific preferences and connections are saved in the users ~/.4C directory. The name of the preferences file is cl-pref.txt and the name of the connection file is configurable but defaults to cl-conn.txt. So at a minimum, after the first install, it will be necessary to either add entries to the cl-conn.txt file in HOME_4C/share or create a new cl-conn.txt file in ~/.4C/cl-conn.txt. Note: Any text file copied from a Windows machine will need to have the carriagertn linefeed pairs converted to a single linefeed.
- Never modify any file in any sub directory of /Applications/FCClient.app. They will always be overwritten anytime a new client is installed.
- Never modify files in $HOME_4C/lib. They will always be overwritten when a new client is installed.
- Fonts - If you are going to change the fonts file, then copy the one in $HOME_4C/lib to $HOME_4C/share and modify it there for all users to get the same changes. Changes for individual users should be made in the ~/.4C directory for that user Mac OS has 3 default font sizes that should be used before trying to use exact point sizes. They are Mini, Small, and Regular. Exact point sizes should work, but there are some controls that don't scale well outside of that range. You can specify "Default" for the facename of a font definition in the 4csfont.def file. You can also specify "Fixed" where you need a fixed width font. FCClient will then use whatever the MacOS preferred font for the control is, which may be different for different types of Mac machines. Apple doesn't like it too much when you don''t use their fonts.
- Editing PCLs - There is no GUI PCL Editor, but the OLD xled editor will work as long as your server has an up to date version of the 4cSys program sys.ph.maint running. If necessary, you can download the the gzipped/isdumped file for sys.ph.maint here [sysphmaint-528.df.gz](https://4csoftware.com/downloads/Misc/sysphmaint-528.df.gz) If you don't like the way XLTERM and XLTERMCAP are set by default, you can set them yourself (not in sys.ph.maint) using the normal MacOS methods for setting env variables. Setting your MacOS X termina preferences (Window Tab) to Columns:120 and Rows:140 work best for the default XLTERM/XLTERMCAP settings. You may also like setting the Terminal/Preferences/Shel/WhenTheShellExists option to "Close the Window" or "Close if the Shell exits cleanly"
- Panel Screen Painter - Not Implemented yet.
- Printing - Printing to a local Mac Printer is not implmented yet. Implemented as of 560-04 - 11 November 2014
- Printing - Printing an image of the current layout is not implmented yet. Implemented as of 560-04 - 11 November 2014
- Printing - Printing to the screen is not implmented yet. Implemented as of 560-04 - 11 November 2014
- TitleArea for programs inside of layout - Not Implemented yet. Not sure how often this is used or if it is important.
- Column modify mode is not implemented yet. Implemented as of 560-05 - 24 November 2014
- Repeat and RepeatAll are not implemented yet. Implemented as of 560-05 - 24 November 2014
- Reconnect on lost connection is not implemented yet.
- sh() with output to std_out is not implemented yet. Fixed 18 August 2014, version 5.6.0-02
- Some controls, especially with short fmts like "XXX" or "999" may size a little too small. This will be fixed in the near future. Improved as of 18 August 2014, version 5.6.0-02
- The sellist control, which is implmented as an NSPopupButton sizes larger than it really should. Not sure why yet. - As of 560-04 - 11 November 2011, the sellist is implemented as an NSComboBox.
- A multiline text field that does not fit completely in the defined field does not show a scroll bar yet. Scrolling is still possible though with the mouse. Fixed 18 August 2014, version 5.6.0-02
- Display Only Text Fields are not selectable.
- The cursor may sometimes change to reflect what a hidden text field thinks it should be rather than what 4C wants it to be. This is seen mostly when using Screen Layout Overlays where the children do not all occupy 100% of the available width and height.
- Using images on labels or buttons or in a panel or layout is not implemented yet.
- sys.cl_open() is not implmented yet. Fixed 18 August 2014, version 5.6.0-02
- CL_PRINT is treated the same as CL_OPEN when using sys.cl_open()
- If you set background colors of fields or list items without setting a foreground color, MacOS X may set a default background color which is incompatible with the foreground color. So, you should always set both foreground and backcolors at the same time if you set either one.
- There is no guarantee that using "MSWindows Psuedo Colors" will look the same on a MacOS X as they do on MS Windows. They may not even look reasonable. If done the best I can to map them to something reasonable, but even that can change between releases of MacOS X. So, please avoid using MS Windows Pseudo Colors, especially as background colors.
- Shared Memory - The difference in sizes of processes, gui and non gui, makes it very difficult for Mac OS X to use the same address whan attaching shared memory to a process. This used to be a problem in older versions of 4C, but I think all the problems have been worked out. Currently the FC_SHM_NOVERIFY env var must be set to True on MacOS and there should not be any SysAddr specified in the 4CConfig file. This is automatic via the install and is set through 4CConfig
- The Window menu is currently wrong.
- Neither the main menu nor the function key definitions are set in stone. Please give input on improvements.
- With no arguments specified, starting the FCClient application initially only displays the main menubar. Use the FCClient menu to navigate to Connect and to Application. One way to set up your own icons and startup options for your clients is to use the "Automator" application. This allows you to run a shell script that can open the FCClient.app and pass it the options you want. An example shellscript command that you can specify in Automator follows: `open -a /Applications/FCClient.app --args -c `<Connection>` -a `<Application>` -p `<Program>`` It may be necessary to quote the `<Connection>` and `<Application>` parameters.
- If FCClient crashes and core files are enabled, the core file will end up in the /cores/ directory.
- If you don't like pressing the FN key and a Function Key (F1 - F12) at the same time, you might want to set the keyboard preference: Use all F1, F2, etc. keys as standard function keys.
- Another preference that you may wish to set to allow using the Tab key in Dialogs to navigate to all controls (including buttons) rather than just to TextFields and ComboBox controls is: Preferences/Keyboard/Shortcuts Tab/All Controls CheckBox
- Though different directories are used by the MacOS X 4C Client and the win32 4C Client, the env vars used to address them are the same. So, as long as you don't have hardcoded directory and filenames in your application most things will just work automatically.
- An application that needs to distinguish between a Win32 4C GUI Client and a MacOS X 4C GUI Client should check the system variable sys.cl_type. It will be one of "WIN32-GUI" or "MACOS-GUI" In addition, non gui programs may want to check sys.cl_ostype and sys.cl_osname.

Other than the above mentioned issues, any 4C program that depends on
specific MS Windows software being installed on the client may need
to be modified.

