# 4C FCJSon External Library - Overview

[4C External Libraries Home]({{< ref "../_index.md" >}})[FCJSon Home]({{< ref "_index.md" >}})

## 15 January 2018

The FCJSon 4C external library is meant to allow applications to
easily create and consume JSon content.
The two main use cases for FCJSon are

- Create JSon content to store or send to some application api.
- Parse JSon content that has been received from some other application or possibly read from a data base.

In order to effectively use the FCJSon library,
you need to be familiar with the structure of a JSon object and the
different data types that a json object can hold.
The main JSon data structure is a JSon object and this structure can hold
0 or more member items.
A member item is always a "`<key>` : `<value>`" pair.
JSon object keys are enclosed in either single or double quotes.
JSon object keys are case sensitive, so "Key1" and "key1" are not
interchangeable.
The data type of the `<value>` can be any of the following

- Object - Another JSon object with it's own set of "`<key>` : `<value>`" pairs. Items in a JSon object are separated by commas and the object itself is enclosed by curly braces. White space is not important but helps for readability. JSon objects look similar to the following. `{ "key1" : `<value1>`, "key2" : `<value2>`, ... "keyN" : `<valueN>` }` Items in a json object can be different data types.
- Array - Items in an array can hold data of the same types that a JSon object can. Array items do not have keys. They are referenced by index starting at 0. Items in an array can be null.. Arrays are enclosed by square brackets and items are separated by commas. A JSon array may look similar to the following `[1, { "key1" : `<somevalue>`, "key2" : `<anotherval>` }, null, null, "hello", 2.2]` Notice that items in an array do not each need to be the same data type.
- null - A null object. Mostly used in arrays with empty slots, but it is perfectly legal for a member item of a json object to have a null value.
- String - an alpha value surrounded by either single or double quotes.
- Boolean - Either true or false. Case does not appear to be significant. When dealing with boolean values, the FCJSon library uses 0 for false and 1 for true.
- Integer - Numeric value without decimal. A leading minus sign is allowed but a leading plus sign is not.
- Double - A numeric value with a decimal place and possible leading minus sign.

FCJSon uses an integer id to reference the objects in the JSon data structure.
Most FCJSon functions expect an integer id as the first argument
to the function.
Every id that is returned by FCJSon must later be freed by the calling
application using either FCJSon::Free() or FCJSon::FreeAll().
It is not possible to get an object that is deeper than 1 level from the
object that it is being extracted from nor is it possible to put an object
at a level deeper than 1 into an object.
In order to do so, you have to first get the parent object id,
possibly by making
multiple calls into FCJSon to either get to the next level or to create the
next level.
Hopefully, the examples given later will make this clear.

For an application that is extracting data from a JSon object the normal
flow of control will be as follows

- Call FCJSon::ParseString() or FCJSon::ParseFile() to get the root object id of the entire structure.
- Loop one or more times doing the following Call one of the FCJSon::Get... functions to extract data or info about an item in the JSon object or to get an id of an embedded object. Any id returned by one of the FCJSon::Get routines can be used to continue going deeper into the structure. Process the data or item that was extracted.
- Free any unfreed ids by repeatedly calling FCJSon::Free() or simply calling FCJSon::FreeAll() once.

For an application that is creating a JSon object to either store or
send to another application the normal flow of control will be as follows

- Create the root level object using FCJSon::CreateObject()
- Loop one or more times doing the following Add items to the object using one of the FCJSon:Add functions Create additional objects to embed in the current one
- Save the JSon object to a 4C variable or to a file using either FCJSon::Save() or FCJSon::SaveToFile().

When using the the FCJSon library you should be aware of the following

- There are 2 Get functions for each data type. One is for getting data from an array and one is for getting data from an object.
- Each get function has an optional `<key>` argument. The `<key>` argument needs to be used when the ident refers to an object or sub object that has the form `{ "key1" : `<value1>`, "key2" : `<value2>`, ... "keyN" : `<valueN>` }` If the ident refers to an object or sub object that only has the form `<value>`, the `<key>` argument is not used. The way you end up with an object that has the simple form of `<value>` only is by making a call similar to: `ident1 = FCJSon::GetObject(ident0,"key1");`
- When adding items to an array, the Add routines always add an item to the end of the array, increasing it's length by one. The Put functions put the object at the specified idx, replacing anything that was there, extending the array if necessary and setting any skipped slots to null.
- There usually is more than one way to accomplish the same thing and some of the functions in this library may initially appear to be redundant but there usually is a use case where one of the alternate methods is preferred. One example that comes to mind is adding an integer with a key to another object. Here are 2 ways that that can be done. Assume that the object we are adding to has `<key>`:`<value>` pairs and is identified by jsonident0. `jsonident1 = FCJSon::CreateInt(`<ival>`); FCJSon::AddObject(jsonident0,`<key1>`,jsonident1);` FCJSon::AddInt(jsonident0,`<key1>`,`<ival>`); Both of the above accomplish the same thing and the only difference is that in the first case you still have an ident for the integer object and can use it elsewhere. You cannot use it to modify either the key or the value of the integer that was added. However, if instead of using a simple integer object, we were adding a complex object of `<key>`:`<value>` pairs or an array object and we retained a reference to the object added, any changes made to the retained object ident affects the object that was added. It should be noted that the following is different than either of the 2 above and produces different json content. `FCJSon::AddIntObject(jsonident0,`<objkey>`,`<intkey>`,`<ival>`);`
- You cannot delete items from an array, only replace them with null. So, there is no current way to shorten the length of an array. You can only make it longer by adding to the end or putting objects at indexes >= the current length

The FCJSon external library can set the following error codes

- 0 - FCJSON_OK - No Error, function executed without error
- 1 - FCJSON_ERR_PARSE - The text or file being parsed is not formatted correctly
- 2 - FCJSON_ERR_NOJSONOBJECT - An invalid ident was passed to an FCJSon function
- 3 - FCJSON_ERR_NOTFOUND - Warning only, object was not found
- 4 - FCJSON_ERR_NOTARRAY - JSon object should be an array but is not
- 5 - FCJSON_ERR_INVALIDIDX - An array index is invalid
- 6 - FCJSON_ERR_INVALIDTYPE - A JSon object is not the correct type for the function
- 7 - FCJSON_ERR_OPENFILE - Error opening file
- 8 - FCJSON_ERR_READFILE - Error reading file
- 9 - FCJSON_ERR_NULLJSONOBJECT - Object is null
- 9997 - FCJSON_ERR_JSONLIB - Internal libharu api error
- 9998 - FCJSON_ERR_NOTIMPLEMENTED - Function not implemented
- 9999 - FCJSON_ERR_UNKNOWN - Unknown error

Use sys.get_extfnopt(`<libname>`,"LastError") to get the error code set
after making a call into the library that returns an error or warning.

Use sys.get_extfnopt(`<libname>`,"LastMessage") to get the error message set
after making a call into the library that returns an error or warning.

Check sys_ret when a function returns an ambiguous value that could mean
an error or could be a valid value.
If the the function is returning an error, then sys_ret will be less than
0.
If the function is returning a valid value with no warning
then sys_ret will equal 0.
if the function is returning a valid value and there is a warning,
sys_ret will be > 0.
[Credits and Acknowledgements]({{< ref "fcjsoncredits.md" >}})

