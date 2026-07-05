---
title: "Client Preferences"
weight: 4
draft: false
---

4C Client version 4.4.4 and higher stores client preferences in text files
rather than in the clseqf.sxl file.
There are two client preferences file.
Both are text files that can be easily edited with a text editor
or with the 4C Client Preferences Dialog.
The 4C Client Preferences Dialog is available from the 4C Client Menu
and from the CtrlF8 Dialog.
They are stored in ${FC_APPDATA}/cl-pref.txt and
${FC_COMMONAPPDATA}/cl-pref.txt.
The current user preferences always take precedence over the
all users preferences.
The preferences file has the following format:

- Lines starting with a `#` are comments
- Blank lines are ignored
- PreferenceName `<PreferenceValue>`

Here are the Preference names and values:

- Help - Value can be either True or False. Default is False. If True, then field help messages are displayed automatically.
- ListAddStyle - Value can be Top, Bottom, or Relative. Default is Relative. This determines where the window for adding list items pops up.
- BtnReturnActivate - Value can be True or False. Default is False. If True, and a cmdbtn has the Focus, pressing rtn activates the button. I think this is a very bad idea and that only the spacebar should be used as a way to activate buttons with the keyboard.
- TabstopAll - Value can be True or False. Default is False. If True then `<tab>` will stop at all input fields regardless of whether there is a tabstop set on the input field.
- DisableTypeAhead - Value can be True or False. Default is False. If True then input is not buffered by the 4cclient until the 4csrvr is ready.
- GetAnswerType - Value can be Text, Dialog, or Default. Default value is Default, meaning it uses whatever the sys.get_answer() call specified.
- ShowConnInfo - Value can be True or False. Default is False. If set to True, then Connection Info shows up in the main layout title bar.
- ShowUser - Value can be True or False. Default is False. If set to True, then the authenticated username is displayed in the main layout title bar.
- ShowDate - Value can be True or False. Default is False. If set to True, then the current date is displayed in the main layout title bar.
- ShowTime - Value can be True or False. Default is False. If set to True, then the current time is displayed in the main layout title bar.
- PSHDrConnInfo - Value can be True or False. Default is False. If True, then connection info is printed in the hdr of a PrintScreen page.
- PSHdrUser - Value can be True or False. Default is False. If True, then authenticated username is printed in the hdr of a PrintScreen page.
- PSHdrDate - Value can be True or False. Default is False. If True, then the current date is printed in the hdr of a PrintScreen page.
- PSHdrTime - Value can be True or False. Default is False. If True, then the current time is printed in the hdr of a PrintScreen page.
- PSHdrLayoutTitle - Value can be True or False. Default is False. If True, then the layout title isprinted in the hdr of a PrintScreen page.
- FontFileList - Value can be a comma separated list of 4c font definition files. When no absolute path is given, the files are assumed to be in ${FC_APPDATA}/ for the current user preference and in ${FC_COMMONAPPDATA} for all users preferences.
- ConnFileList - Value can be a comma separated list of 4c client connection files. When no absolute path is given, the files are assumed to be in ${FC_APPDATA}/ for the current user preference and in ${FC_COMMONAPPDATA} for all users preferences.
- FKeyFileList - Value can be a comma separated list of 4c client fkey definition files. When no absolute path is given, the files are assumed to be in ${FC_APPDATA}/ for the current user preference and in ${FC_COMMONAPPDATA} for all users preferences.
- MaxConnHist - Numeric value specifying how many recent connections you want to keep saved for easy access with QuickConnect
- MaxInstances - The maximum number of w4ccl sessions that are allowed. If not set the default is 2.
- MaxInstanceOverride - This is an All Users preference only. If set, then this is the max number of w4ccl sessions that any one user can run no matter how high they set their own MaxInstances preference.
- WarnAfter - This is the number of w4ccl sessions you are allowed to run per user before getting a warning that there are alread so many sessions running. It defaults to 1.
- SysAddr - This is a global preference only. There should be no reason to change this preference, so leave it alone unless you really know what you are doing. It is the address that 4cclients will attach their shared memory at. Here are some possible values: -2 - Use the operating system default address. Only use this if the only client you run is w4ccl. If you run any other 4c clients, such as wpnlsp, wpcled, or 4ccl it will probably cause conflicts . -1 - Disable using shared memory. 0 - Let 4C determine where memory should be attached. Currently this is at 200M and works on all systems tested. > 0 and <= 10 - Ignored - same as 0 > 10 - Then attach the shared mem at `<n>` * 1M. If you specify 20, then the shared mem segment will be attached at address: 0x01400000. Be careful changing this parameter. Setting it improperly may prevent w4ccl from being able to run. If this happens, then use notepad to change it, or start w4ccl with the "--noshare" option.
