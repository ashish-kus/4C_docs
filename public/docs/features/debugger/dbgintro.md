# 4C Debugger - Intro

The 4C debugger allows you to debug any and all
4C programs that you are running or will be running.
It is not necessary to do anything special to enable
debugging.
When you need it, just start it up.
Some of the things the debugger allows you to do are:

- View a list of currently running programs.
- Set break points
- Set watch points
- View and modify file vars
- Kill running 4C programs

---

## 4C Debugger - Running

In order to start the debugger, bring up the 4C session control dialog
and and click on `<Debug>`.
You will be at the "Trace/Vars" tab of the debugger.
Here you see a list of currently running 4C programs.
Programs are listed from most recently used through least recently
used.
From the options and util menu you are able
to:

- See more details about the state of a single 4C program.
- View and modify file vars.
- View the source for PCLs in one 4C program.
- Kill one or more running 4C programs.
- Go to one of the other debugger tabs.

When the 4c debugger is running,
your 4C program will be waiting for control.
You can return control to your program by selecting continue
from one of the menus or by pressing `<accept>`.
A shortcut key is defined for continue in all of the 4C debugger
programs, so a quicker way to continue executing your program is
to just press 'c'.

---

## 4C Debugger - Break Points

A break point is a condition that you specify that causes 4C
to interrupt a running 4C program.
4C break points fall into the following categories:

- Program - Program breakpoints are triggered either when a specific program starts or when a specific program ends.
- PCL - PCL breakpoints can be set for PCL start, PCL end, or for any line number in any PCL.
- SysPCL - SysPCL breakpoints can be set for the start or end of a system pcl call.
- Variable - A variable breakpoint can be set to trigger when a particular file variable changes value.

Whenever the 4C debugger interrupts your program,
it always displays the debugger tabs and either
the "Trace/Vars" tab or the "CurPCL" tab will be active.
If a PCL is running, then the "CurPCL" tab will be active.
Otherwise the "Trace/Vars" tab will be active.

The 4C debugger always displays the reason for the interrupt at
the bottom of the debugger programs.

There are several ways to add or delete break points.

The first method is to:

- Select the "BreakPts" tab.
- Delete existing break points by selecting the break points to delete and pressing `<Delete>`.
- Pressing `<Add>` will guide you through the steps of adding a new break point.

Another way to add/delete PCL line break
points for any of the currently running programs is:

- Select the "Trace/Vars" tab.
- Select the program.
- Select PCLs from the util menu.
- Double click one of the displayed PCLs
- Double click any of the displayed lines to toggle a break on that line. You will see a 'B' in the left col if a break point exists for that line.

This same method of toggling PCL line break points
can be used in the "CurPCL" tab.

---

## 4C Debugger - Trace/Vars

The "Trace/Vars" tab displays a list of currently running
programs.
From here you can:

- View detailed stated information about a program. Just select detail from the Options menu, or press `<user1>`.
- View and modify file vars. Select Files from the Options menu or press `<user2>`. Next select the file you want to view file vars for and select Det from the options menu, press `<user1>`, or double click the file. You will see the current value of all file vars. You can modify these simply by selecting and pressing `<modify>`. After making a change to a file var, the debugger will display the formatted file var and you need to press `<return>` to accept the change, or you can type in another value or you can cancel the change by pressing `<cancel>`. From the same file var program, you can add a watch point on any file var by double clicking it.
- Kill a running program. Select one or more programs and then select "kill" from the Util menu.
- View PCLs and set/unset PCL line break points.

From any of the "Trace/Vars" programs, you can continue
running your 4C programs by pressing 'c'.
You can return to the previous debugger program
by pressing `<cancel>` or `<accept>`.

---

## 4C Debugger - Current PCL

The "CurPCL" tab can be displayed only if the current program
is executing a PCL.
If it is then the source for that PCL is displayed.
The current line is always marked with a "==>".
Any lines that have break points are marked with a "B".
Inside the "CurPCL" tab, you can:

- Toggle PCL line break pts by double clicking the line.
- Step to the next executable line in the CurPCL by selecting "Step" from the Util menu. This will step over calls to other PCLs. "s" is a shortcut key for StepOver, and since it is used so often, `<space>` is also a shortcut key for StepOver.
- Step into a called PCL by selecting StepI from the Util menu. "i" is a shortcut key for StepInto. If the next executable line is not a PCL call, then StepInto works the same as Step.
- Continue until the PCL returns by selecting StepRet from the Util menu. "r" is a shortcut key for StepRet.
- Continue until the PCL ends by selecting StepEnd from the Util menu. "e" is a shortcut key for StepEnd.
- Continue until return to calling PCL. "R" is the shortcut key for StepUp.
- Continue your 4C program by pressing 'c'.

---

## 4C Debugger - Watch Points

A watch point is just a specific file variable that displays
in the "Watches" tab of the debugger.
Watchpoints also display in the "CurPCL" tab along with any
local PCL vars.

Using watch points makes it easy to check or modify the
current value of a file var.

Just press `<modify>` in order to change the value
of any file var being "Watched".

---

## 4C Debugger - Args

The "Args" tab of the debugger lets you see the
arguments passed in and the return value of either
an application PCL or a system PCL.
The return value is displayed only when the break point
is at PCL End or SysPCL end.

Pressing `<return>` or "c" from the "Args" tab
will continue executing your program.

---

## 4C Debugger - Misc Notes

1. You cannot connect the debugger to another users 4C session.
2. Currently, break points and watch points are only saved during the current 4C session.
3. Stepping through code that looks at $wexit_code can be unpredictable since the dbg programs themselves may change $wexit_code.
4. It is possible to confuse 4C by alt-tabbing between the 4C debugger programs and your application programs.

