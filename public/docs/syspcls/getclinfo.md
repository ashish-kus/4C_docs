# sys.get_clinfo()

## Purpose

`sys.get_clinfo()` retrieves client info.

## Usage

```text
aval = sys.get_clinfo(<infotype>);
```

## Arguments

- `alpha` — `<infotype>` -

## Returns

alpha `<aval>` - A alpha representation of the requested info.

## Where Used

`sys.get_clinfo()` can be called from anywhere.

## Example

```text
See the demo.info.1 demo program for an example of sys.get_clinfo().
```

## Description

`sys.get_clinfo()` returns a string representation of the requested info. `<infotype>` must be one of:

"ConnectStatus" - This option will work with earlier client versions since no request to the client is necessary. It will also work with the non interactive client. The returned value when requesting "ConnectStatus" can be one of:

"Error" - The client connection has been lost. sys.errno will be set to the os errno.

"Connected" - The client is currently connected.

"Disconnected" - The client is disconnected but the server is still working.

"DisplayWidth"

"DisplayHeight"

"WorkAreaWidth"

"WorkAreaHeight"

"HorizontalDPI" - returns the logical horizontal dpi (requires client version 6.2.7-03 or later)

"VerticalDPI" - returns the logical vertical dpi (requires client version 6.2.7-03 or later)

"Interactive" - Returns "Yes" or "No" 4ccl is currently the only non interactive client.

"UserName" - Returns the user name of the user logged into the client machine or "Unknown" if it cannot be determined.

"ComputerName" - Returns the client computer name or "Unknown" if it cannot be determined.

"MACAddress" - Returns the MAC Address of the ethernet card being used in "xx:xx:xx:xx:xx:xx" notation or "Unknown" if it cannot be determined.

"IdleTime" - Returns the number of seconds that the client has been inactive. Client inactivity means no mouse, keyboard, or other input device has been active in that time. This requires sv version 4.4.7 or higher and client version 4.4.8 or higher.

"4CUpdateStatus" - Returns either "Running" or "NotRunning" depending on whether 4cupdd is running or not.

`sys.get_clinfo()` always returns an alpha value. If the requested info is numeric, the application will need to convert it.

Requirements

"IdleTime" requires sv version 4.4.7 or higher and client version 4.4.8 or higher.

Some options require both client and server to be at version 4.4.4 or higher.

"4CUpdateStatus" requires client version 5.2.8-02 or later.

## Bugs/Features/Comments

The DisplayWidth, DisplayHeight, WorkAreaWidth, WorkAreaHeight, and IdleTime options require a round trip network request. None of the other options require a network request at all.

Some options are not supported by the non interactive 4C client, 4ccl.

## See Also

[`sys.get_svinfo()`]({{< ref "getsvinfo.md" >}})

[`sys.get_clpref()`]({{< ref "getclpref.md" >}})

[`sys.set_clpref()`]({{< ref "setclpref.md" >}})

Back to Top

## See Also

- [sys.get_svinfo()]({{< ref "getsvinfo.md" >}})
- [sys.get_clpref()]({{< ref "getclpref.md" >}})
- [sys.set_clpref()]({{< ref "setclpref.md" >}})


