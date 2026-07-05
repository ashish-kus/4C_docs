# sys.set_cmitem()

## Purpose

`sys.set_cmitem()` allows you to change the attributes of individual context menu items.

## Usage

```text
ret = sys.set_cmitem(CMNAME,<flags>,item1,item2,...,itemn);
```

## Arguments

- `integer` — CMNAME - The name of the ContextMenu.
This name gets mapped to an integer when the program is compiled.
Do not enclose it in quotes.
- `integer` — `<flags>` - Combinations of
CM_ENABLED or CM_ENABLE
CM_DISABLED or CM_DISABLE
CM_VISIBLE or CM_SHOW
CM_HIDDEN or CM_HIDE
- `integer` — item - Use the CDef for this item or CM_ALL to
specify that all items in the specified CMENU have their attributes set.

## Returns

- `0` — Items Set OK
- `-1` — Invalid ContextMenu Specified.
- `> 0` — Some items specified were invalid

## Where Used

`sys.set_cmitem()` can be called from anywhere in a Screen Program.

## Example

```text
The following code is from the sys.pf.maint program and either
hides or unhides the DRIVER item on the CM1 context menu.

if (sys.pf_drflag=='y')
    sys.set_cmitem(CM1,CM_ENABLED,DRIVER);
else
    sys.set_cmitem(CM1,CM_DISABLED,DRIVER);
```

## Description

Use `sys.set_cmitem()` to enable, disable, hide, and unhide items on a context menu. By default, all items in a context menu are visible and enabled at the start of a program.

## See Also

[`sys.set_cmenu()`]({{< ref "setcmenu.md" >}})

Back to Top

## See Also

- [sys.set_cmenu()]({{< ref "setcmenu.md" >}})


