# Typical Option Panel Usage

## Updated - 04 August 2016

There are different several different scenarios where using optiona panels
increase the usability of the application.
Some of them along with best practive guidelines are outlined here.

---

## Search Programs

A search program that needs to allow the user to specify some search
parameters before displaying the list of matching items should use an
initial option panel to input the search parameters.
Best practices for search programs are

- Set the Initial Option Panel to restart on exit. This allows the user to cancel from the list and input different search parameters without having to use the mouse.
- Use a "Refresh" cmd btn as well as the `<user1>` fkey and a context menu item to refresh the main panel. The "refresh" PCL will have code similar to the following. `if (sys.get_fltype()==FLTYPE_INIT) sys.exit_fldloop(); else sys.dr_restart(sys.program,DR_CLEAR);`
- Use a "restart" PCL to reset the initial passed in values to the program to their initial values. The code to use is `sys.restore_share(`<flname>`);`
- Use multiple context menus so that the same fkey can be used differently in the Initial Option panel fld loop and the Main field loop. Use the Option Panel Changed PCL to set the conext menu correctly. The code to use is `if (sys.get_fltype()==FLTYPE_INIT) sys.set_cmenu(CMINIT); else { if (sys.get_fltype()==FLTYPE_DRIVER) sys.set_cmenu(CMMAIN); else sys.set_cmenu(CMINIT); /* Not acting as the init panel */ }`
- Make the default SPC `<accept>` and catch the `<accept>` key and exit the program with code 0 when caught.

Examples of search programs that follow the above guidelines

- sys.pr.srch.1 - Program name search in the 4cSys application, called from many places, including the main development starter program, sys.prog.mstr.

See Also

- [4C Option Panels]({{< ref "optpanels.md" >}})

