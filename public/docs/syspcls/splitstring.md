# sys.split_string()

## Purpose

`sys.split_string()` splits a string variable into multiple vars.

## Usage

```text
count = sys.split_string(<spflags>,<string>,<avararray>,<delimstr>);
```

## Arguments

- `integer <spflags>` — Either SP_DEFAULT or any combination of
SP_NOQUOTE -
Treat single or double quotes as normal characters
SP_NOSTRIP -
Do not strip out empty values.
This is important when position in the string is important.
SP_PRESERVEQUOTE -
Preserve outer single or double quotes.
Only meaningful when SP_NOQUOTE ia not specified.
- `alpha <string>` — The string to split.
- `alpha <avararray>` — This should be the first member of a dimensioned var.
- `alpha <delimstr>` — A string made up of the characters you want to use
to determine where to split the string.

## Returns

integer `<count>` - The number of strings stored in `<avararray>`

## Where Used

`sys.split_string()` can be called from anywhere.

## Example

```text
n = sys.split_string(SP_DEFAULT,"abc,def,xyz",avar[0],",");


Assuming avar has a dimension of 10,
this call will set n to 3, avar[0] to "abc",
avar[1] to "def", and avar[2] to "xyz".
avar[3] - avar[9] will each be set to "".
```

## Description

`sys.split_string()` splits a string into one or more strings and stores the resuting strings in a dimensioned variable. The splitting occurs at any character that matches one of the characters in `<delimstr>`. The character matched is not saved.

By default single and double quotes are special and any delimeters inside of a quoted part of the string do not cause the string to split. To avoid this special treatment of single and double quotes, specify SP_NOQUOTE in `<spflags>`.

Quotes act kind of odd when they are at the start of a split word. Unless SP_PRESERVEQUOTE is specified, quotes at the start of a split are stripped and the ending quote is stripped also and it also acts like a delimeter.

Empty values are stripped out by default. To avoid this and have empty strings returned in in the avarray specify SP_NOSTRIP in `<spflags>`.

Requirements

`sys.split_string()` requires the 4c server to be at version 4.4.4 or higher.

SP_NOSTRIP and SP_PRESERVEQUOTE require 4csrvr to be at version 5.2 or higher

## See Also

Back to Top


