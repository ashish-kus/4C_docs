# 4cshutdown

## Purpose

4cshutdown allows you to gracefully shutdown all 4c processes.

## Usage

```text
4cshutdown <option> [ <optarg> ] ...
```

## Options

- `-m <message>` — Message text to use rather than the default
- `-w <waittime>` — Number of seconds to wait after message before
sending shutdown signal.
- `-f <forcewaittime>` — Number of seconds to wait after shutdown signal
before killing remaining 4c processes.
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
4cshutdown -m "Please Logoff Now for System Maintenance" -w 60
```

## Description

4cshutdown allows you to stop all 4c processes gracefully. You must me super user or administrator to use this program. You should at least specify the waittime parameter to specify the number of seconds to wait before sending the 4c shutdown signal. If the fwaittime parameter is not specified, then no processes will be forcefully killed. If the fwaittime parameter is specified, then any 4c processes that do not respond to the 4c shutdown signal are forcefully killed after the specified time interval. The following demonstrates the best method for stopping all 4c processes. Notice that the 4c server daemon is stopped first to prevent any new connections.

```text
/bin/sh stop4c.sh
4cshutdown -w 60
xlview
4cshutdown -w 60 -f 60
xlview
```

## See Also

```text
4cmsg
```

Back to Top

## See Also

- [4cmsg]({{< ref "4cmsg.md" >}})


