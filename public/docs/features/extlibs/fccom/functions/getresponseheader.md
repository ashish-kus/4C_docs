# GetResponseHeader()

## Purpose

FCCom::`GetResponseHeader()` returns the value of a response header

## Usage

```text
FCCom::GetResponseHeader(<connident>,<hdrname>);
```

## Arguments

integer `<connident>` - A connection id returned by an earlier call to FCCom::[`Alloc()`]({{< ref "alloc.md" >}})

alpha `<hdrname>` - A valid hdrname name.

## Returns

- `""` — Error, invalid `<connident>` or invalid `<optname>`
The value of the response header as an alpha

## Where Used

FCCom::`fnname()` can be called anytime you have a a valid connection id and have made at least one request on the connection.

## Description

FCCom::`GetResponseHeader()` returns the value of a specific header from the mosty recent request on the connection. This can be useful when a site returns session ids or tokens in a response header that need to be used in future requests on the connection.

## See Also

See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


