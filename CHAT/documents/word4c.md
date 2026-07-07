---
title: "word4c"
weight: 3
draft: false
---

## Purpose

word4c is a 4c client program that interfaces with Microsoft Word

## Usage

```text
word4c <option> [ <optarg> ] ...
```

## Options

-d `<worddocument>` -
This option can be used to open an existing word document.
It is ignored if the -t option is used.
-t `<worddatatemplate>`
- `-o Min` — If winword is not yet running, start it minimized.
- `-o Hide` — If winword is not yet running, start it hidden.
- `-o Exit` — If winword is not yet running, exit when word4c finishes.
The older method of calling word4c,
passing it just the `<worddatatemplate>` is
still supported:
word4c `<worddatatemplate>`

## Example

```text
An example of using word4c to communicate with winword is
the tmp.word.demo.s program in the 4c bootstrap directory.
In order for this to work correctly,
the client machine needs a /tmp directory
and you should copy the fhtemplate.dot word template
from the 4C/samples directory to 4C/lib.
```

## Description

Word4c can be used in two ways. If you specify the -d `<docname>` option it will act the same as if you used the shell to open the document. Nothing interesting here. This was useful in the past before 4c had the [`sys.cl_open()`]({{< ref "../SysPCLs/clopen.md" >}}) call.

The more intersting way of using word4c is to call it with the -t `<worddatatemplate>` option. The `<worddatatemplate>` file must exist. It can be created on the fly by the server, as tmp.word.demo does, or it can be created in some other manner. In any case, the `<worddatatemplate>` file is a simple text file with the following format:

Each line consists of a type followed by one or more data fields. The type must start as the first character of the line and data fields must be separated from the type and each other by tabs. Lines that start with a '#' are comments and ignored. Unrecognized types are also ignored.

At any one time, the word document you are editing will have a current UpdateState. The current UpdateState is controlled by the `<worddatatemplate>` file. The Update state is always one of:

OnCreate - Updates will be done only if the document was created, but not if an existing document was opened.

OnOpen - Updates will be done only if an existing document was opened, but not if a new document was created.

Always - All updates will be done.

Never - No updates will be done.

The initial update state is OnCreate.

The types currently recognized are:

WordDoc

This MUST be the first line in the file and specifies global document options. The WordDoc line has one data field with it that is composed of a series of options separated by commas. Some of the options have values which are set by using an '=' between the option and the value. Unrecognized options are ignored. The current options allowed are:

Name=`<docname>`

This will be the name of the document created or the name of an existing document. Full paths including the drive and extension should be used as `<docname>` Either forward or backward slashes should work in the path. If you do not use full pathnames, then the document will probably end up in the current users documents directory.

Open - Specifies to open an existing document if it exists. This can be specified along with Create.

Create - If specified along with Open and the document does not exist, it will be created. If specified along with Open and the document does exist, it will be opened without overwriting the existing document. If specified without Open, the document will be created, overwriting an existing document of the same name if necessary. Be careful using Create without open.

Template=`<template>` - Specify the name of a valid Word template file when creating a new document.

OnCreate - Change the current UpdateState to OnCreate.

OnOpen - Change the current UpdateState to OnOpen.

Always - Change the current UpdateState to Always.

Never - Change the current UpdateState to Never.

Bookmark - This specifies bookmarks that will be processed depending on the current UpdateState.

The Bookmark line has one data field with options separated by commas. The options allowed are:

Name=`<bkname>` - The name of the bookmark in the template file.

Replace=`<text>` - Text to be substituted for the bookmark.

Goto - Make this bookmark the current location in the document.

Insert - Specifies that succeeding lines of text that begin with white space will be inserted at the current location. Whether text is actually inserted or not depends on the current UpdateState of the document.

Execute - Execute your own favorite word basic command.

The Execute line has one data field which is a word basic command and it's arguments separeted by commas. Some arguments to word basic commands need to be enclosed in double quotes. In order to do this, enclose the entire argument including the double quotes in single quotes.

The Execute line will be processed depending on the current UpdateState of the document.

Do not include leading and trailing square brackets as part of the Execute cmd.

Some possible execute statements follow:

Execute FilePrint

Execute FileSave

Execute FileSaveAs,'"C:/tmp/zz.doc"'

Execute FileClose

There are hundreds of other commands you can execute including emailing the document or whatever. Please consult your wordbasic reference for those commands.

Here's a sample `<worddatatemplate>` file with comments to help illustrate the basic ideas

WordDoc  Name=/tmp/m_menubar.doc,Open,Create,Template=./fhtemplate OnCreate # # The following 3 book mark commands only # gets processed if we created a new document # Bookmark  Name=FN1,Replace=m_menubar Bookmark  Name=FN2,Replace=m_menubar Bookmark  Name=FN3,Replace=m_menubar OnOpen # # The next two only get processed if # an existing document was opened # Bookmark  Name=DESC1,"Replace=4C Motif Menubar Hdr File" Bookmark  Name=SYSSIZE1,Replace="448" Always # # Now, all following bookmark statements, # insert statements, and execute statements get # processed no matter what # Bookmark  Name=USRSIZE1,Replace="220" Bookmark  Name=VER1,Replace=2.1 Bookmark  Name=VERDATE1,Goto Insert The right of the people to be secure in there persons, houses, papers, and effects against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the person or things to be seized. # # This marks the end of the Insert text # Bookmark  Name=rtOfDoc,Goto Execute   FilePrint Execute   FileSaveAs,'"c:/tmp/x1.doc"' Execute   FileExit

## Bugs/Features/Comments

Even when -o Hide or -o Min is specified, winword sometimes chooses to show itself. This is completely version dependant and may change anytime you install a new MS service pack or new version of word.

Currently, it is not possible to run word4c and have it create a document, but not save that document. This is because winword will not allow a DDE session with a document that is not saved. Even though it will show "Document1" as an available DDE topic, it never starts the DDE session. If you know how to do this, please let me know.

If you don't specify a document name in your `<worddatatemplate>`, you may not see an error message, but it is unlikely to work as expected.

Back to Top

## See Also

- [4C Client Programs]({{< ref "_index.md" >}})

