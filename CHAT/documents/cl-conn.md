---
title: "Client Connections"
weight: 3
draft: false
---

For 4C Client Versions 4.4.4 and higher,
connection info is stored in one or more connection files
rather than in the windows registry.
These files are simple text files that can be edited with a text editor
or with the 4C Client Connection Dialog.
There are 2 default connection files, ${FC_APPDATA}/cl-conn.txt and
${FC_COMMONAPPDATA}/cl-conn.txt.
You can change these defaults using the 4c preferences dialog.
The format of the connection text file is as follows:

- Lines starting with '#' are comments
- Name `<name>` - The Name entry specifies the label that should show up on the connection menu for this file when this file has submenus. There should only be one Name entry per connection file.
- Path `<path>` - Path entries help organize connections in a heirarchical manner.
- Label `<label>` - A Label entry inserts a label in the current path of the connection menu hierarchy.
- Separator A Separator entry inserts a separator in the current path of the connection menu hierarchy.
- Connection `<ConnName>` - The rest of the connection info is on successive lines each starting with white space.

Most users will be able to get by with simple connection files,
but if you need to store connection info for hundreds of users,
it will be worthwhile to organize this file a bit.
Here's an example of a simple connection file:

```text
#
# 4CClient Connections
#
Name Global
Connection fedora4c
Machine=10.0.0.16,Type=TCP,Port=1414
Version=444
Usr=kjenglish
Connection localhost
Machine=localhost,Type=TCP,Port=1412
Version=444
Usr=kevin
```

Here's a little more complicated one:

```text
#
# 4CClient Connections
#
Name Private
Path /Main
Connection fedora4c
Machine=10.0.0.16,Type=TCP,Port=1414
Version=444
Usr=kjenglish
Ping=300
Connection 4cDemoMachine
Machine=4chelp.com,Type=TCP,Port=1412
Version=444
Usr=kjenglish
Ping=300
Separator
Path /Trafxs/System1
Connection Production
Machine=10.0.0.65,Type=TCP,Port=1412
Version=444
Usr=trafxs
Ping=300
Path /Trafxs/System2
Connection "Test"
Machine=test1,Type=TCP,Port=1412
Version=444
Usr=trafxs
Ping=300
Connection "Production"
Machine=prod1,Type=TCP,Port=1412
Version=444
Usr=trafxs
Ping=300
Path /Main
Connection fedora4c-dsl
Machine=206.228.139.110,Type=TCP,Port=1416
Version=444
Usr=kjenglish
Ping=300
Connection centos4c
Machine=10.0.0.17,Type=TCP,Port=1412
Version=444
Usr=kjenglish
Ping=300
Connection fc60
Machine=10.0.0.60,Type=TCP,Port=1412
Version=444
Usr=kjenglish
Ping=300
Connection vista-23
Machine=10.0.0.23,Type=TCP,Port=1412
Version=444
Usr=kevin
Ping=300
Connection localhost
Machine=localhost,Type=TCP,Port=1412
Version=444
Usr=kevin
Ping=300
Connection centos4c-dev
Machine=10.0.0.17,Type=TCP,Port=1414
Version=444
Usr=kjenglish
Ping=300
```
