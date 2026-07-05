# 4C Timeouts

## Notes

Timeout `<n>` is equivalent to SvTimeout `<n>`.

Only 4csrvr versions 4.4.8 and higher will recognize SvTimeout and ClTimeout in XLCONFIG.

Client timeouts require both the 4csrvr and 4cclient to be version 4.4.8 or higher.

It is not a good idea to specify a session timeout program for either client or server timeouts in XLCONFIG because not all applications will be using the same program path. It is better for your application to set up session timeouts that need to run a program when the timeout is triggered.

When a session timeout is caught and runs a 4C program, the 4C program should disable session timeouts in the InitPCL and re enable them in the ExitPCL.

If your application is using both server and client session timeouts and running programs when they are triggered, it is necessary for the server timeout to be less than the client timeout in order to guarantee that it will be triggered. This is because once a client timeout is triggered that runs a program, the server will not be idle and the input wait will start over the next time the server is waiting on input.

Program timeout values should be less than or equal to the session timeout values or they will never get triggered.

If your application uses alarms, it is necessary for the alarm to be no greater than any current timeout value or it will never get triggered.

If you use client session timeouts to exit a client session you really should enable ContinueWork in _4CSRVRCONFIG.

## See Also

`sys.settimeout()`

[`sys.set_alarm()`]({{< ref "../SysPCLs/setalarm.md" >}})

[`sys.get_timeoutp()`]({{< ref "../SysPCLs/gettimeoutp.md" >}})

[`sys.get_timeoutv()`]({{< ref "../SysPCLs/gettimeoutv.md" >}})

[`sys.set_alarm()`]({{< ref "../SysPCLs/setalarm.md" >}})

[`sys.lock_clientws()`]({{< ref "../SysPCLs/lockclientws.md" >}})

[`sys.exit_client()`]({{< ref "../SysPCLs/exitclient.md" >}})

[`sys.exit_4c()`]({{< ref "../SysPCLs/exit4c.md" >}})

Back to Top

## See Also

- [sys.set_timeout()]({{< ref "../SysPCLs/settimeout.md" >}})
- [sys.settimeout()]({{< ref "../SysPCLs/settimeout.md" >}})
- [sys.set_alarm()]({{< ref "../SysPCLs/setalarm.md" >}})
- [sys.get_timeoutp()]({{< ref "../SysPCLs/gettimeoutp.md" >}})
- [sys.get_timeoutv()]({{< ref "../SysPCLs/gettimeoutv.md" >}})
- [sys.lock_clientws()]({{< ref "../SysPCLs/lockclientws.md" >}})
- [sys.exit_client()]({{< ref "../SysPCLs/exitclient.md" >}})
- [sys.exit_4c()](https://www.4csoftware.com/docs/SysPCLs/exit_4c.html)



## Additional Notes

idle regardless of whether

continuously refreshes itself thus preventing

machine has been idle

sit idle, but continue working

Allow graceful exit of an idle

so that resources are freed Lock

by adding an entry

specified, the 4c server

from the user for more

two hours. If ``<prname>``

specified, then ``<prname>``

has been waiting for user input for more

two hours. The easiest way

define a client session

by adding an entry

For the above, if no ``<prname>``

specified, the 4c client session

exit if there has been no mouse

keyboard input on the client machine for at least two hours. The

may continue running if

is still doing useful work. If ``<prname>`` is specified, then ``<prname>``

run when the 4c client session has been idle for at least two hours. The only way

demo.main.s, lockscreen.s, lockscreen.warn, lockscreen.1,

getpwd.1 work together to implement a server session

that hides the current

requires a password to unlock the session. The demo programs demo.main.s

lockws.1 work together to implement a client session

that locks the client workstation when the

is exceeded. Modify the config

by running demo.config.fm and then run run demo.main.s to

how the above examples work. Timeout

SvTimeout and ClTimeout

XLCONFIG. Client timeouts

both the 4csrvr and

to specify a session timeout

session timeouts that

to run a program when the timeout is

When a session timeout is

a 4C program, the 4C program

session timeouts in the

both server and client session timeouts and running programs when

for the server timeout to

the client timeout in

be triggered. This is

a client timeout is triggered that

a program, the server will not be idle and the input

time the server is waiting on input. Program timeout

to the session timeout values or

triggered. If your application uses

it is necessary for the

than any current timeout

client session timeouts to exit a client session you

