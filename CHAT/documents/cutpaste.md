---
title: "'Cut/Copy/Paste'"
weight: 2
draft: false
---

As of version 3.5.4, 4C supports Cut/Copy/Paste operations
between 4C applications and non 4C applications.
Cut and Copy from a 4C application are similar and are discussed first.
Pasting into a 4C application is a little more complicated and will
be discussed later in this document.

---

## 'Cut/Copy'

If you have a 3.5.4 client installed, then Cut and Copy
are enabled.
You do not need to make any changes to your application
for bitmaps, defalt text, and default DIF formats
to be copied to the client clipboard.
Once in the clipboard, other applications can access that data.
You can change what gets copied to the clipboard if you have
4C server version 3.5.4 or higher installed.
You do this by defining PCLs to be called when either the 'cut'
or the 'copy' key is pressed, just as you would for any other
function key.

Here is how 4C handles the copy key if the application does not
catch it.

- Empty the contents of the clipboard.
- For any type program, copy the current layout to the clipboard in bitmap format.
- If the current program is a scrolling program, then copy the selected items to the clipboard in text format. Only the scrolldet fields are copied and spaces are preserved in the text.
- If the current program is a scrolling program, then copy the selected items to the clipboard in DIF format. Only the scrolldet fields are copied.
- If the current program is a scrolling program and the 4C Server is version 3.5.4 or greater, then the 4C Server sends 4C Format data to be copied to the clipboard as well. The 4C Format data will be all fields in the driver file for each selected item.

So, as a default, when the 4C Client copies data to the clipboard,
it may appear there in only bitmap format, in bitmap format,
text format, and DIF format, or in bitmap format, text format,
DIF format and 4C format.
Only 4C applications will be able to make use of the 4C format
but word processors can easily use the text and bitmap formats
as well

The application cannot override copying the bitmap to the clipboard,
but it can change the text that gets copied,
it can change the 4C format data that gets copied,
and it may also copy data in DIF format which can be used
by spreadsheets.
In order to do so, it catches the copy key and then
sends the data by using the following SysPCLs.

- [sys.cbc_init]({{< ref "../SysPCLs/cbcinit.md" >}})
- [sys.cbc_end]({{< ref "../SysPCLs/cbcend.md" >}})
- [sys.cbc_open]({{< ref "../SysPCLs/cbcopen.md" >}})
- [sys.cbc_close]({{< ref "../SysPCLs/cbcclose.md" >}})
- [sys.cbc_senddata]({{< ref "../SysPCLs/cbcsenddata.md" >}})
- [sys.cbc_sendtext]({{< ref "../SysPCLs/cbcsendtext.md" >}})

The general idea is to call sys.cbc_init() once,
then send all the data for each of the formats that
you want sent to the clipboard
and finish it by calling sys.cbc_end() once.
For each type of data that you want to send,
you must call sys.cbc_open() once
and then send the data
and then call sys.cbc_close() once.
The data is sent by making multiple calls to
sys.cbc_senddata() or sys.cbc_sendtext().

It is not necessary, to send all data formats.
If you catch the `<copy>` key in a scrolling program
and you want to send the default text, but different
4C format data, then only send the 4C format data.
The clipboard will still have the bitmap format and the
text format when a user tries to paste data.

The only trick to sending data is letting 4C know
what data you want to send.
This is done by specifying an `<asfile>` in the sys.cbc_open(),
sys.cbc_senddata(), and sys.cbc_close() calls.
You make sure that the file buffers have the correct data
before calling sys.cbc_senddata() and 4C will format it correctly.

Cut is implemented similarly.
The only difference is that if you are running 4CSrvr version 3.5.4
or higher and you do not process the `<cut>` key,
then in addition to copying the selection to the clipboard,
4C will treat the `<cut>` like an unhandled `<delete>`.
This default behaviour only affects scrolling programs.

---

## 'Paste'

Pasting data into a 4C application requires both 4CClient and 4CServer
to be version 3.5.4 or higher.
Pasting data is only allowed in 4C programs where it has been
specifically enabled.
There are two ways to enable pasting into a 4C application.

The first way is to catch the `<paste>` key and have the
application do all the processing with a little help from the sys.cbp_
SysPCLs.
This can be used for any type program but is harder to implement
than the second way.
The sys.prog.mstr program and the sys.ph.maint program
both catch the `<paste>` key and then do their own processing of it.

The other way is to just check the "Paste OK" box in the default
driver options screen or call sys.set_droption(DR_PASTEOK) in the DrInit PCL.
This method can only be used in scrolling screens.
When a scrolling program enables pasting this way and the client
pastes data,
4C will automate the processing by going through
a series of state changes, each of which allows the
application to call a PCL or to allow default processing.
The sys.df.maint1 program handles the `<paste>` key using this method.

The 3 New Program States used for pasting are
PasteInit, PasteSelect, and PasteEnd.
You can specify PCLs to call in these states
in program characteristics by selecting
ProgPaste from the context menu.
Here is what happens and what you are allowed to do in each of the
paste states.

- PasteInit - If there is no PCL defined for this state, then 4C checks to make sure the paste type is the same as the program driver file. If it is not, then no paste is allowed. Next, it displays a dialog box that allows the user to choose whether or not to proceed with the paste as well as to modify some options. If you define a PCL for this state, you should check the type of the paste by calling [sys.cbp_gettype()]({{< ref "../SysPCLs/cbpgettype.md" >}}) and if you can not handle it you should be sure to call [sys.cbp_exit()]({{< ref "../SysPCLs/cbpexit.md" >}}) If you call sys.cbp_exit() the next state processed will be PasteEnd. For sequenced driver files, 4C will resequence the records if necessary before entering the PasteSelect state.
- PasteSelect - This state is entered for each item being pasted. If the application does not define a PasteSelect PCL, then it will add a record to the driver file using data from the paste but it may change the key to match the non changing part of the driver file's key. If the application defines a PCL for the PasteSelect state, then it will need to make the necessary updates to the driver file and will need to call sys.dr_add() for each record it adds. It will use calls to [sys.cbp_getdata()]({{< ref "../SysPCLs/cbpgetdata.md" >}}) or [sys.cbp_gettext()]({{< ref "../SysPCLs/cbpgettext.md" >}}) to get data for each individual paste item.
- PasteEnd - This signals that pasting is done. If necessary, 4C will resequence sequenced driver files here.

At the end of the paste operation, 4C will
redisplay the current page on the screen and
eventually reach the EndPage state again.

The best example of implementing paste in this way is sys.df.maint1.
Look at the code and try different pastes.
See what happens when you:

- Paste a program into display fields after it has been copied to the clipboard from the sys.prog.mstr program.
- Paste display fields copied from a different 4C program, even a different 4C program on a different server.
- Paste sys.file_det items after copying them to the clipboard from the sys.fd.maint program.

The following SysPCLs are meant for use by an application processing a
paste.

- [sys.cbp_getcount]({{< ref "../SysPCLs/cbpgetcount.md" >}})
- [sys.cbp_gettype]({{< ref "../SysPCLs/cbpgettype.md" >}})
- [sys.cbp_getnflds]({{< ref "../SysPCLs/cbpgetnflds.md" >}})
- [sys.cbp_getipaddr]({{< ref "../SysPCLs/cbpgetipaddr.md" >}})
- [sys.cbp_getappname]({{< ref "../SysPCLs/cbpgetappname.md" >}})
- [sys.cbp_getport]({{< ref "../SysPCLs/cbpgetport.md" >}})
- [sys.cbp_getdata]({{< ref "../SysPCLs/cbpgetdata.md" >}})
- [sys.cbp_gettext]({{< ref "../SysPCLs/cbpgettext.md" >}})
- [sys.cbp_exit]({{< ref "../SysPCLs/cbpexit.md" >}})

---

## Misc Issues

- The default DIF copy is only available with 4c client versions 4.2.2 and higher.
