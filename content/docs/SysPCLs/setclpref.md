---
title: "sys.set_clpref()"
description: "allows the application to modify a client preference"
weight: 273
draft: false
---

## Purpose

`sys.set_clpref()` allows the application to modify a client preference.

## Usage

```text
ret = sys.set_clpref(<prefflags>,<prefstring>[,<prefstring>]...);
```

## Arguments

integer `<prefflags>` - This can be either PREF_CURRENTUSER or PREF_ALLUSERS, possibly combined with PREF_SAVE.

## Returns

integer `<ret>`
- `0` — OK
- `-1` — Error, probably client version earlier than 4.4.4

## Where Used

`sys.set_clpref()` can be called from anywhere during an interactive client session.

However, the client preferences really are for the client to choose and set. Except under extraordinary circumstances, you should not change client preferences for them without their interaction.

## Example

```text
sys.set_clpref(PREF_CURRENTUSER|PREF_SAVE,"FontFileList=4csfont-1.txt);
```

## Description

`sys.set_clpref()` allows the application to modify client preferences. You can modify preferences specific to the current user or for all users. This should be used only under special circumstances. If you want the preferences to be saved, then also specify PREF_SAVE as part of the `<prefflags>` argument. If PREF_SAVE is not specified, the modified preferences will not be saved permanently unless some subsequent call to `sys.set_clpref()` specifies PREF_SAVE or unless the user calls up the preferences dialog and saves them that way. You can set multiple preferences by specifying multiple `<prefstring>` args. Each `<prefstring>` arg is in the format "PrefName=Val" where PrefName and Val correspond to the names and values documented in:

Client Preferences

In some cases, changing a client preference does not take effect until the client exits and restarts. In particular, modifying ConnFileList, FontFileList, or FKeyFileList require the client to exit and restart to have any effect.

Requirements

`sys.set_clpref()` requires both client and server to be at version 4.4.4 or higher.

## Bugs/Features/Comments

`sys.set_clpref()` is not supported by the non interactive 4C client, 4ccl.

Specifying an incorrect `<prefstring>` is not detected as an error.

Do not assume that the current user has permission to write the All Users cl-pref.txt file. No error is returned if PREF_SAVE is specified and the user does not have permission to write the cl-pref.txt file.

## See Also

[`sys.get_clinfo()`]({{< ref "getclinfo.md" >}})

[`sys.cl_restart()`]({{< ref "clrestart.md" >}})

`sys.set_clpref()`

Back to Top

## See Also

- [Client Preferences]({{< ref "../Config/cl-pref.md" >}})
- [sys.get_clinfo()]({{< ref "getclinfo.md" >}})
- [sys.cl_restart()]({{< ref "clrestart.md" >}})
- [sys.set_clpref()]({{< ref "getclpref.md" >}})

