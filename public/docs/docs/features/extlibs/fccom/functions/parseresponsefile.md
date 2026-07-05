# ParseResponseFile()

## Purpose

FCCom::`ParseResponseFile()` treats a file as if it is the response to an http request, saving status codes, response headers, and content.

## Usage

```text
rc = FCCom::fnname(<connident>,<filename>[,<opt1name>,<opt1val>][,<opt2name>,<opt2val>]);
```

## Arguments

integer `<connident>` -
A connection id returned by an earlier call to FCCom::Alloc()
alpha `<filename>` -
The name of the file to parse
- `alpha <opt1name>` — an optional option name, currently the only supported options are
"reply-content" and "reply-content-fn"
- `alpha <opt1val>` — The value for `<opt1name>` if `<opt1name>` was specified
- `alpha <opt2name>` — an optional option name, currently the only supported options are
"reply-content" and "reply-content-fn"
- `alpha <opt2val>` — The value for `<opt2name>` if `<opt2name>` was specified

## Returns

- `0` — File parsed OK
- `-1` — Some error, bad ident, file does not exist, other error.

## Where Used

FCCom::`fnname()` can be called from anywhere.

## Description

FCCom::[`ParseFile()`]({{< ref "../../FCJSon/Functions/parsefile.md" >}}) is a function that can be used as a debugging aid.

## See Also

See Also

FCCom Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCCom Home]({{< ref "../_index.md" >}})
- [FCCom Function List]({{< ref "_index.md" >}})


