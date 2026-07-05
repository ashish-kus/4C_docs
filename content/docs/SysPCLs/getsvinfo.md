---
title: "sys.get_svinfo()"
description: "retrieves server info"
weight: 184
draft: false
---

## Purpose

`sys.get_svinfo()` retrieves server info.

## Usage

```text
aval = sys.get_svinfo(<infotype>);
```

## Arguments

- `alpha` — `<infotype>` -

## Returns

alpha `<aval>` - A alpha representation of the requested info.

## Where Used

`sys.get_svinfo()` can be called from anywhere.

## Example

```text
See the demo.info.1 demo program for an example of sys.get_svinfo().
```

## Description

`sys.get_svinfo()` returns a string representation of the requested info. `<infotype>` must be one of:

"ConnectStatus" - The returned value when requesting "ConnectStatus" can be one of:

"Error" - The client connection has been lost. sys.errno will be set to the os errno.

"Connected" - The client is currently connected.

"Disconnected" - The client is disconnected but the server is still working.

"Interactive" - Returns "Yes" or "No" depending on whether the server is communicating with an interactive or non-interactive client.

"UserName" - Returns the user name associated with the 4csrvr process. This will normally be the same as the system variable sys.l_username.

"ComputerName" - Returns the computer name of the server or "Unknown" if it cannot be determined.

"MACAddress" - Returns the MAC Address of the ethernet card being used by the server in "xx:xx:xx:xx:xx:xx" notation or "Unknown" if it cannot be determined.

"PublicKey" - Returns a string representation of the 4C Servers Host public key. This should be unique across all 4c server installations as long as the server install was done properly. This string can be long.

"Idle" - Returns "Yes" or "No" depending on whether the server was idle when the last timeout occurred. It only makes sense to check for "Idle" if you are processing a client timeout.

SerialCustName - Returns the customer name from the serialization file.

SerialLicenseType - Returns the License type from the serialization file.

SerialComputerName - Returns the computer name from the serialization file.

SerialMACAddrList - Returns the list of MAC Addresses from the serialization file.

SerialMaxUsers - Returns the number of licensed users from the serialization file.

SerialStartDate - Returns the date the serialization file became active.

SerialEndDate - Returns the last date the serialization file is good for.

SerialError - Reurns "Yes" to indicate that the serialization file is invalid.

SerialHWError - Returns "Yes" to indicate the serialization file hardware list does not match the current hardware configuration.

SerialDemo - Returns "Yes" to indicate that 4C is running in Demo mode.

SerialInfoDisplayed - Returns "Yes" to indicate that serialization info has been displayed to the user.

`sys.get_svinfo()` always returns an alpha value. If the requested info is numeric, the application will need to convert it.

Requirements

`sys.get_svinfo()` requires 4CSrvr 4.4.4 or higher.

The Server Serialization info options require 4CSrvr 4.6.1 or higher

## Bugs/Features/Comments

There is no difference between calling [`sys.get_clinfo()`]({{< ref "getclinfo.md" >}}) or `sys.get_svinfo()` when `<infotype>` is "ConnectStatus" or "Interactive".

## See Also

`sys.get_clnfo()`

Back to Top

## See Also

- [sys.get_clnfo()]({{< ref "getclinfo.md" >}})

