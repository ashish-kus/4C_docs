---
title: "4C FCCom External Library - Overview"
weight: 3
draft: false
---

[4C External Libraries Home]({{< ref "../_index.md" >}})[FCCom Home]({{< ref "_index.md" >}})

## 15 January 2018

The FCCom 4C external library is meant to allow applications to use the
HTTP protocol to access web resources from within a 4C program without
needing to use external shellscripts and other utilities.
In order to use this library you should be famiiar with the HTTP protocol.

The general flow of control when using this library is as follows

- Allocate a connection
- Set global connection options and global headers
- Connect
- Loop 1 or more times doing the following Set single request options and headers Create the content needed by the request if any. Send an HTTP request specifying the content and content-type if any. Process the request response.
- Close the connection
- Free all resources for the connection

Be aware of the following

- You can have as many active connections as you need.
- Each connection has it's own unique identifier within 1 single 4csrvr process
- You need to use the connection id as the first argument to most FCCom function calls.
- Every connection that the application allocates must be explicitly freed by the application.
- Most options and option values are not case sensitive so specifying "ssl","true" is equivalent to "SSL","True". The only exception is the `<optvalue>` for "UserName" and for "Password"

Also be aware of the following http server issues.

- Different http servers have different ways of expecting an application to authenticate itself. The only authentication built in to FCCom is basic authentication. In order to use Basic Authentication just make sure that you have set both the UserName and the Password options for the connection. Password can be set to an empty string, "" or '', to indicate no password should be passed.
- Different http servers have different ways that they expect to receive request content. Sometimes in the query args themselves and sometimes in a request body.
- Some servers expect a trailin '/' as part of the resource, others don't
- In order to POST form data you must set the Content-Type to "application/x-www-form-urlencoded" and then set the content to something similar to "Field1=value1&Field2=value2&Field3=value3" Note that there is no leading '?' as there would be in a GET request You can set the Content-Type by calling FCCom::SetReqHeader(ident,"Content-Type",...) or by specifying "request-content-type,... in the FCCom:HttpRequest() call.
- In order to use the FCCom library to communicate with an http server, you need to know what the server expects from the caller and how the server will respond.

The possible error codes set by any function in the FCCom library are

- 0 - FCCOM_OK - No error, function executed correctly.
- 1 - FCCOM_ERR_NOCONN - The `<connident>` passed to the function was invalid.
- 2 - FCCOM_ERR_NOSERVER - No server name or ip address has been set for the connection.
- 3 - FCCOM_ERR_CONNECT - There was an error connecting to the server.
- 4 - FCCOM_ERR_INVALIDOPT - An invalid option was specified.
- 5 - FCCOM_ERR_GET - Unknown error on http request.
- 6 - FCCOM_ERR_FILEOPEN - File open error.
- 7 - FCCOM_ERR_GETRESPLINE - The response from the server is incomplete or invalid.
- 8 - FCCOM_ERR_NOCHUNKSIZE - The response from the server is invalid.
- 9 - FCCOM_ERR_CONNREAD - The content returned by the server is invalid or incomplete.
- 10 - FCCOM_ERR_WRITEFILE - Error writing to file.
- 12 - FCCOM_ERR_SOCRECV - There was a read error on the connection.
- 13 - FCCOM_ERR_INVALIDREQUEST - The http request is invalid.
- 14 - FCCOM_ERR_SOCSEND - There was a write error on the connection.
- 15 - FCCOM_ERR_SOCCLSTART - There was an error connecting to the server.
- 16 - FCCOM_ERR_MISSINGARG - The function call did nooot supply enough args.
- 17 - FCCOM_ERR_TRUNCATED - The result is truncated. Informational only. Partial data still available to application. Truncation results when the http request specifies a variable to return the content to and the the content size is greater than the size of the var.
- 18 - FCCOM_ERR_FILESTAT - A file that is supposed to hold the content for the request does not exist.
- 19 - FCCOM_ERR_INVALIDARG - An arg to the function is invalid.
- 1001 - FCCOM_ERR_SSLCONNECT - There was an error creating an SSL Connection to the server.
- 1002 - FCCOM_ERR_SSLREAD - There was an error reading from the SSL connection to the server.
- 1003 - FCCOM_ERR_SSLWRITE - There was an error writing to the SSL connection to the server.
- 2001 - FCCOM_ERR_HTTPSTATUS - The status code returned by the server was either less than 100 or greater than 599.
- 2002 - FCCOM_ERR_HTTPQUERYSIZE - Either the request content or the request query is too large. The maximum size of the request content is currently 32K and the maximum size of the request query including all headers and cookies is 64K. Most servers will have a limit lower than this.

Use sys.get_extfnopt(`<libname>`,"LastError") to get the error code set
after making a call into the library that returns an error or warning.

Use sys.get_extfnopt(`<libname>`,"LastMessage") to get the error message set
after making a call into the library that returns an error or warning.

Check sys_ret when a function returns an ambiguous value that could mean
an error or could be a valid value.
If the the function is returning an error, then sys_ret will be less than
0.
If the function is returning a valid value without any warning,
then sys_ret will equal 0.
if the function is returning a valid value and there is a warning,
then sys_ret will be > 0.
