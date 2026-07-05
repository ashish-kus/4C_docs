# sys.get_nusers()

## Purpose

`sys.get_nusers()` returns the number of 4C proceses currently running.

## Usage

```text
nusers = sys.get_nusers();
```

## Arguments

None

## Returns

- `integer <nusers>` — The number of 4C processes currently running.

## Where Used

`sys.get_nusers()` can be called from anywhere. It is used by some of the system configuration/display programs.

## Example

```text
The following code is the Init PCL for sys.ui.display.




maxusers = sys.get_maxusers();
nusers = sys.get_nusers();
sys.create_tfile(sys.usr_info);
for (i = 0; i < maxusers; i += 1) {
    if ((sys.ui_usrname = sys.get_username(i)) == "")
        continue;
    sys.ui_idx = i;
    sys.read_file(sys.usr_info,F_ADD|F_NODEBLOCK);
    sys.ui_ttyname = sys.get_ttyname(i);
    totusrsize += sys.ui_maxumem = sys.get_maxumem(i);
    sys.upd_file(sys.usr_info,F_DEFAULT);
}
sys.ui_usrname = ""; /* clear for drinit */
```

## Description

`sys.get_nusers()` returns the number of 4C processes currently running. Each copy of 4C and each 4C utility counts as one process. `sys.get_nusers()` always returns <= [`sys.get_maxusers()`]({{< ref "getmaxusers.md" >}}).

## See Also

[`sys.get_idx()`]({{< ref "getidx.md" >}}) [`sys.get_maxusers()`]({{< ref "getmaxusers.md" >}}) [`sys.get_ttyname()`]({{< ref "getttyname.md" >}}) [`sys.get_username()`]({{< ref "getusername.md" >}})

Back to Top


