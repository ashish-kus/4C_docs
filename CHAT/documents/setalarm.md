---
title: "sys.set_alarm()"
description: "sets a timeout value on user input"
weight: 269
draft: false
---

## Purpose

`sys.set_alarm()` sets a timeout value on user input.

## Usage

```text
sys.set_alarm(<nsec>);
```

## Arguments

- `integer <nsec>` — Number of seconds for the alarm.
If `<nsec>` is 0, then there will be no timeout on
user input.

## Returns

Always returns 0.

## Where Used

`sys.set_alarm()` can be called from anywhere, but its affect is ALWAYS on the next user input. You would normally call this routine in an SFLD PCL, or immediately before a call to `sys.dr_epedit()` or [`sys.dr_epselect1()`]({{< ref "drepselect1.md" >}}).

## Description

`sys.set_alarm()` sets a timeout value for the next user input. The timeout value is the number of seconds to wait with NO user input, not the number of seconds to wait for a `<CR>`. Every character typed resets the alarm to the timeout value.

If the alarm is triggered during field input, then the verify PCL can be used to determine if the alarm was set off. sys.errno will be set to ERR_ALARM.

If the alarm is triggered during a call to `sys.dr_epedit()`, [`sys.dr_epselect1()`]({{< ref "drepselect1.md" >}}), or [`sys.err_msg()`]({{< ref "msg.md" >}}), the return value will be less than 0, and sys.errno will be set to ERR_ALARM.

If the alarm is triggered during a call to [`sys.get_answer()`]({{< ref "getanswer.md" >}}), then the return will be blank and sys.errno will be set to ERR_ALARM.

After any user input, the alarm is always reset to 0 even if it was not triggered. Your program must call `sys.set_alarm()` before every user input that needs to timeout.

## See Also

Back to Top

