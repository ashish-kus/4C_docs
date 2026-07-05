# 4C External Libraries - Most Recent Changes

[4C External Libraries Home]({{< ref "_index.md" >}})

## 09 May 2024

- Some previously undocumented functions havce been added to the FCCom documentation

## 20 October 2021

Versions 6.7.3-01 and later

- The FCJSon library allows using either integer or int64 values when setting or getting Int values. Previously all values set and returned were 32 integer values only.

## 18 October 2021

Versions 6.7.3-01 and later and version 6.4.9-06 and later

- There have been some changes in the FCJSon library due to the way the library outputs double precision numbers to a field or to file. The change allows you to specify an optional display value that will be output instead of relying on the default formatting that the library uses.

## 07 December 2020

- The FCJSon library has 4 new functions [GetStringLen()]({{< ref "FCJSon/Functions/getstringlen.md" >}}) , [GetStringPart()]({{< ref "FCJSon/Functions/getstringpart.md" >}}) , [ArrayGetStringLen()]({{< ref "FCJSon/Functions/arraygetstringlen.md" >}}) , [ArrayGetStringPart()]({{< ref "FCJSon/Functions/arraygetstringpart.md" >}})
- Arrays with 0 elements are returned correctly rather than returning error

## 28 July 2020

- The FCPdf library allows specifying an encoding, mostly to allow UTF8 strings, in the font selecting functions.

## 15 January 2018

- Initial Release and Documentation

