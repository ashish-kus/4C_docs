# Overview of Web4C

[req4c Docs]({{< ref "req4cindex.md" >}})[req4c Function List]({{< ref "Functions/_index.md" >}})
Up until now the only way to access 4C data from a Web program
was to store the data in a database that had a Web interface.
Though there is nothing wrong with this approach,
it does add an extra layer of complexity to the application.
You either have to replicate the data to the database or use the
database as your main 4C database.
You also lose the ability to filter the data using 4C.
There has been increasing interest in accessing 4C data without
going through this middle layer.
Some of the ideas that have come up are:

- A cgi interface to 4C usable by any Web scripting language.
- A PHP extension for running 4C programs and processing results.
- A Java class for running 4C programs and processing results.
- A CSharp class for running 4C programs and processing results.
- Modifications to 4C that would allow it to format and output html reports.

For a first pass at allowing Web access to 4C, we have implemented a PHP
extension called req4c.
One or more of the other options may be implemented in the future,
depending on interest,
but for now req4c will be the main way to interact with 4C programs through
the Web.
req4c is documented here:
[req4c Documentaion]({{< ref "req4cindex.md" >}})

