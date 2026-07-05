---
title: "xlfile"
weight: 11
draft: false
---

## Purpose

xlfile allows you to add/modify/delete rcds from a 4C data file.

## Usage

```text
xlfile <option> [ <optarg> ] ...
```

## Options

-f `<filename>` Mandatory
-d `<spec directory>`
-n `<ext file name>`
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlfile -f cust_mstr



     This starts the xlfile program and will allow you to modify,
add, view, or delete rcds in the cust_mstr file.
```

## Description

xlfile allows you to modify/add/delete rcds in a 4C data file. When it starts up you see a prompt like:

Enter Cmd (c,n,p,m,t,b,q): n

The current command is 'n' and you can enter `<RTN>` or any other cmd displayed in the prompt. The cmds and their meanings are:

"c - current record" Display Current Record

"n - next record" Display Next Record

"p - prev record" Display Previous Record

"m - modify" Allow add/modify/delete of record after prompting for the primary key.

"t - top" Display first record in the file.

"b - bottom" Display last record in the file.

"q - quit" Exit xlfile

When in modify mode, you can modify an existing rcd by entering its primary key and setting the data fields to the values that you want. You add a new rcd by entering a non existent primary key. You can move forward quickly by tabbing, and you can move backward with the backtab (usually ^U) key. When you reach the end of rcd, you are prompted if you want to add or update the rcd. Your changes will not take affect unless you answer 'y'. At this point you can also enter 'd' if you wish to delete the rcd.

## Bugs/Features/Comments

`<cancel>` does not work

There is no way to get field help or to know the fmt a field needs.

## See Also

Back to Top

