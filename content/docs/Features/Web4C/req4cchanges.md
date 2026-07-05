---
title: "Req4c Change Log"
weight: 1
draft: false
---

## 22 March 2010

- You can pass arguments with req4c_run() to the 4C program as separate arguments. They do not need to be concatenated onto the program name string anymore. Concatenating them onto the program name will still work.
- If there is a req4c_session then the req4c sessionid and timestamp are passed to 4C programs using sys.web_sid and sys.web_ts system variables.
- If there is a PHP session active, then the 4C program can access sys.web_phpsid.
- If you use req4c sessions, then any values you set in $_REQ4C_SESSION will always be available to you script. The variables are always updated when a session is opened. Multiple sessions can be in use and use different variables and/or different values for the same variables and they will always be up to date.
