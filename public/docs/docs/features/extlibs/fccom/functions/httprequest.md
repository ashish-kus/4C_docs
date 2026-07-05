# HttpRequest()

## Purpose

FCCom::`HttpRequest()` sends an http request to a server and gets the response from the server.

## Usage

```text
ret = FCCom::HttpRequest(<connident>,<reqtype>,<resource> [, <optname>, <optval>]...);
```

## Arguments

integer `<connident>` - A connection id returned by an earlier call to FCCom::[`Alloc()`]({{< ref "alloc.md" >}}).

alpha `<reqtype>` - The request type. Must be a valid HTTP request type such as "GET", "POST", "PUT", etc.

alpha `<resource>` - The full path on the server to the resource including any queryargs.

alpha `<optname>` - An option needed by this request.

alpha `<optval>` - The value to use for the preceding `<optname>`.

## Returns

- `0` — Request completed OK.
Caller needs to check "StatusCode".
- `1` — Request completed, but reply content was truncated in the receiving 4C
var.
Posssibly other warning messages in the future.
So application should call sys.get_extfno[pt("FCCom","LastError") and
sys.get_extfno[pt("FCCom","LastMessage")
- `-1` — There was an error.
Caller should check "LastError".

## Where Used

FCCom::`HttpRequest()` can be called anytime there is a valid `<connident>`.

## Example

```text
Example
```

## Description

FCCom::`HttpRequest()` sends an http request to a server and gets the response from the server. The `<optname>`, `<optval>` pairs that can be passed to this function and are only valid for this single request are:

"request-content", `<reqcontentvar>` - The request content is in the 4C var `<reqcontentvar>`. The content will be sent as the body of the request.

"request-content-fn", `<reqcontentfn>` - `<reqcontentfn>` is the full path to a file with the content that should be sent as the body of the request.

"request-content-type", `<reqcontenttype>` - `<reqcontenttype>` tells the server the content type of the request content. This information is passed as a request header.

"reply-content", `<replycontentvar>` - `<replycontentvar>` is a 4C alpha variable that will receive as much of the returned content as possible.

"reply-content-fn", `<replycontentfn>` - The full path to a file on the 4csrvr which may or may not exist and will be created/truncated and written with the content returned by the reply.

Any other `<optname>` specified is an error.

It is valid to specify both `<reply-content>` and `<reply-content-fn>`.

If the connection is not currently open, FCCom::`HttpRequest()` will first connect to the server before sending the request.

If the server responds, the FCCom library will read all response headers and process the ones it needs to including saving cookies that will be sent with the next request that uses the same `<connident>`.

## See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


