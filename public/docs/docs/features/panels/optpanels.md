# Option Panels

## Updated - 02 April 2020

An option panel is a panel that can be processed outside of normal
4C fld loop processing. An option panel can accept input even when input
would not normally be allowed in the MainFldLp.
When an option panel has the focus, traversal between fields stays inside
of the option panel until focus is changed by the user or the application.
There is no StartFldLp or EndFldLp processing within an option panel.
When focus is outside of any option panel, field traversal is between all fields
that are not in any option panel of the program.
The StartFldLp and EndFldLp processing is always done when inside of
this MainFldLp.
Each option panel and the MainFldLp each maintain their own fld loop,
but only the MainFldLp ever processes the StartFldLp PCL and EndFldLp PCL.

There are several scenarios that benefit from using option panels.
Some of them are

- Use an option panel instead of a starter screen for scrolling screens. This lessens program clutter and obviates the need of having to pass lots of parameters or to share fields between a starter screen and a detail screen. When used this way, you will normally specify the option panel as an "Initial" option panel so that the user has a chance to enter search criteria before the program driver runs for the first time. You may also specify "Restart on Main Exit" if you want the option panel to run when the program would normally exit. The program search screen is set up like this now if you are connected to a 5.2 or later server with a 5.2 or later client. Notice that you do not need to exit the search details in order to reenter the search criteria.
- For a scrolling screen where you might want to allow modifying a lot of options at once, define an option panel with the options and an apply button. When the user clicks the apply button, process all the selected rcds and apply the options.

Some of the attributes that you can specify for option panels are

- "Initial Panel" - Only one option panel can have this attribute and it causes the option panel to run before the MainFldLoop. It is useful for inputting search criteria.
- "Restart On Main Exit" - Only an Initial option panel can have this attribute and it causes the program to restart at the Restart State. Neither the Init PCL nor the Open PCL will run, but the Start/Restart PCL will run every time this Initial option panel is restarted.
- All option panels can be traversed to in Lookup mode, but you can specify whether they are enabled during Add, Modify, and Delete mode as well.
- You can specify whether option panels that cannot be traversed to should be displayed normally, disabled, or hidden.

There are some restrictions on option panels including

- No scrolling list of any type, other then a DFList DpyField, can be in an option panel. That means that you cannot use option panels to allow more than one scrolling list or listview for any program. Sorry. DFLists are allowed though.

There are several ways to give the focus to an option panel

- If the option panel is specified as "Initial" then it receives focus before the MainFldLoop and immediately after running the Start/Restart PCL for the first time.
- If the option panel is specified as "Restart on Main Exit", then when you exit the main program, then the Start/RestarPCL will be run again and the initial option panel gets the focus again.
- The following FNKeys traverse between enabled option panels and the MainFldLp `<optiontabnext>` - `<Alt>`+`<RightArrow>` - moves forward to the next option panel or MainFldLp and wraps if necessary. `<optiontabprev>` - `<Alt>`+`<LeftArrow>` - moves backward to the previous option panel or MainFldLp and wraps if necessary. `<optiontabhome>` - `<Alt>`+`<Home>` - returns to the MainFldLoop You can use the mouse to move between option panels and the MainFldLp Pressing `<cancel>` or `<accept>` inside of an option panel exits that panel and returns control to the MainFldLp unless the option panel is being processed as an Initial panel. In that case, `<cancel>` or `<accept>` on the first input field will exit the program while `<cancel>` on any other field will return to the first input field of the initial option panel and `<accept>` on any field in an initial option panel other than the first will exit the initial option panel and start processing the MainFldLp.
- The application can also choose to explicitly go to an option panel using one of the following methods sys.run_fldloop(`<fldidx>` - If `<fldidx>` is in a different FldLoop than the current FldLoop, this will switch to that FldLoop and continue processing where that FldLoop was last. If `<fldidx>` is part of the current FldLoop, then it does nothing and returns -1. If the current input is a display field and not a scrolling list, then sys.exit_field(`<fldno>`) will navigate to that field. call sys.stack_fkey("optiontabhome" | "optiontabnext" | "optiontabprev") call sys.exit_fldloop() to force return to the main fld loop.

When you use an Initial option panel with a scrolling program,
you will normally enter the main fld loop
processing by executing code similar to the following:

```text
if (sys.get_fltype()==FLTYPE_INIT)
sys.exit_fldloop();
else
sys.dr_restart(`<asfile>`,DR_CLEAR);
```

sys.get_fltype() will only return FLTYPE_INIT if the option panel is the
Initial option panel and that option panelfld loop was started automatically
by 4C following the Start/Restart PCL.
If that option panel is traversed to via the mouse or keyboard then it is not
running as an Initial Option panel and sys.get_fltype() will return
FLTYPE_OPTION.

If the Initial Option panel is set to rerun on exit of the main fld loop,
then it may be necessary to reset some variables either to their original
shared in value or some other value.
The following PCLs may be useful for this:

- [sys.restore_share()]({{< ref "../../SysPCLs/restoreshare.md" >}})
- [sys.fl_restore()]({{< ref "../../SysPCLs/flrestore.md" >}})
- [sys.fl_save()]({{< ref "../../SysPCLs/flsave.md" >}})
- [sys.get_saveval()]({{< ref "../../SysPCLs/getsaveval.md" >}})

Code similar to the following might be useful in the Start/Restart PCL

```text
if (firsttimef!='y')
sys.restore_share(`<asfile>`);
else
firsttimef = 'n'
```

See Also

- [Typical Option Panel Usage]({{< ref "optpusage.md" >}})

