---
title: "4C FCJSon External Library - Most Recent Changes"
weight: 2
draft: false
---

[4C External Libraries Home]({{< ref "../_index.md" >}})[FCJSon Home]({{< ref "_index.md" >}})

## 20 October 2021

Versions 6.7.3-01 and later

- The FCJSon functions used to set or get integer values allow using either 32 bit integer or 64 bit int64 values as the value to set or get. Previously all values set and returned were 32 integer values only. The functions affected are [AddInt](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/addint.html) , [AddIntObject](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/addintobject.html) , [ArrayAddInt](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/arrayaddint.html) , [ArrayAddIntObject](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/arrayaddintobject.html) , [ArrayGetInt](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/arraygetint.html) , [ArrayPutInt](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/arrayputint.html) , [ArrayPutIntObject](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/arrayputintobject.html) , [CreateInt](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/createint.html) , [GetInt](https://www.4csoftware.com/docs/Features/ExtLibs/FCJSon/getint.html)

## 18 October 2021

Versions 6.7.3-01 and later and version 649-06 and later

- The FCJSon functions that create double objects or add double values or double objexts to a JSon objext or to a JSon array all have an optional final argument that allows you to override the default value displayed when the writing the object to either a file or a 4c variable. For 4csrvr version 6.7.3-01 and later specifyin you will not need to specify both values. Specifying only the the alpha value that you want displayed will be sufficient. However, specifying both will still be acceptable. The functions affected are [AddDouble()]({{< ref "Functions/adddouble.md" >}}) , [AddDoubleObject()]({{< ref "Functions/adddoubleobject.md" >}}) , [ArrayAddDouble()]({{< ref "Functions/arrayadddouble.md" >}}) , [ArrayAddDoubleObject()]({{< ref "Functions/arrayadddoubleobject.md" >}}) , [ArrayPutDouble()]({{< ref "Functions/arrayputdouble.md" >}}) , [ArrayPutDoubleObject()]({{< ref "Functions/arrayputdoubleobject.md" >}}) , [CreateDouble()]({{< ref "Functions/createdouble.md" >}})

## 07 December 2020

- The FCJSon library has 4 new functions [GetStringLen()]({{< ref "Functions/getstringlen.md" >}}) , [GetStringpart()]({{< ref "Functions/getstringpart.md" >}}) , [ArrayGetStringLen()]({{< ref "Functions/arraygetstringlen.md" >}}) , [ArrayGetStringPart()]({{< ref "Functions/arraygetstringpart.md" >}})
- Arrays with 0 elements are returned correctly rather than returning error

## 05 February 2018

Version 5.8.8-01 and later

- FCJSon::Save() and FCJSon::SaveAll() both take an extra integer flag parameter. Specify 1 in order to prevent the json output from escaping forward slash characters. The escape is required by the specification, but google doesn't like it. This also requires FCJSon being compiled with version 13 of libjson-c. If you're installed version does not support this, then you will need to use something similar to `jsoncontent = sys.rep_string(RS_ALL,jsoncontent,"\","");` to remove the backslash escape characters.

## 11 January 2018

Version 5.8.7-15 and later

## 09 January 2018


## Additional Notes

calls to get a Double will return 0.0 if when the double is null and will convert an int to a Double if the object is an integer object.

Initial Release and Documentation
