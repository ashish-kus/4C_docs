# SaveToFile()

## Purpose

FCJSon::`SaveToFile()` saves a FCJSon object to a file on the 4c server.

## Usage

```text
rc = FCJSon::SaveToFile(<jsonident>,<fullpath>, [ <fmtflag> [, <noslashescapeflag>] ]);
```

## Arguments

integer `<jsonident>` -
An FCJSon jsonident that identifies a json object.
- `alpha <fullpath>` — Full path to file to save the JSon text in.
The file will be created if necessary, or truncated if it already exists.
- `integer <fmtflag>` — optional arg. Pass 1 if you want the json text formatted nicely,
0 to conserve space.
Default is 0 if not specified.
integer `<noslashescapeflag>` -
Optional arg that when 1 tells FCJSon that it should not escape slash characters in the
output.
The default is 0 if not specified.

## Returns

- `0` — OK
- `-1` — Error

## Where Used

FCJSon::`SaveToFile()` can be called from anywhere.

## Example

```text
Example
```

## Description

FCJSon::`SaveToFile()` saves a FCJSon object as text to a file on the 4c server machine.

## See Also

FCJSon Function List

Back to Top

## See Also

- [4C External Libraries Home]({{< ref "../../_index.md" >}})
- [FCJSon Home]({{< ref "../_index.md" >}})
- [FCJSon Function List]({{< ref "_index.md" >}})


