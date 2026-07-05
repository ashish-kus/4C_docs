# sys.send_result()

## Purpose

`sys.send_result()` sends results from a 4c web application to the web client.

## Usage

```text
sys.send_result(<srtype>,<srid>,<aval>[,<aval]...);
```

## Arguments

`<srtype>` -
One of SR_DATA or SR_NAMES.
- `<srid>` — an alpha variable that the web client can use to
distinguish between different types of results.
`<aval>` -
An alpha data value when using SR_DATA.
An name when using SR_NAMES.

## Returns

- `0` — OK
- `-1` — Current App is not a Web Application.

## Where Used

`sys.send_result()` can be called from any Web Application to send data to WebClient.

## Description

`sys.send_result()` can be used to send data to a Web Client. It can be used instead of or in addition to writing WebReports to send the data. If you want the req4c PHP client to be able to access data using associative arrays, then send call sys.send_result(SR_NAMES,...) before making multiple calls to sys.send_result(SR_DATA,...)

Requirements

A WebEnabled application running 4CServer Version 4.8.1 or later

req4c running somewhere.

## See Also

Web4C

Back to Top

## See Also

- [Web4C]({{< ref "../Features/Web4C/web4cov.md" >}})


