---
title: "xlbuild"
weight: 5
draft: false
---

## Purpose

xlbuild compiles 4C programs and 4C files

## Usage

```text
xlbuild <option> [ <optarg> ] ...
```

## Options

- `-c <catg>` — partial catg name
-a `<actionarea>`
-b `<menubar>`
- `-d <spec dir>` — dir to use when read spec files
- `-e <errmsglvl>` — >= 0
- `-f <filename>` — partial 4C filename
-l `<layout>`
-m `<menu>`
- `-p <progname>` — partial 4C progname
- `-F` — force compile
- `-H` — Help
- `-R` — Complete Rebuild
-D `<optarg>`
"-D" `<optarg>`
can be specified multiple times with any of the following optargs
quads
Print out the quads generated from PCLs.
This is also used for debugging.
memall
Print all memory info
memfile
Print memory info relating to files
memprog
Print memory info relating to programs
mempcl
Print memory info relating to PCLs
memerror
Print any memory allocation problems.
pclinfo
Write rcds to the sys.pcl_info file
debug
Set 4C debug flag on.

## Example

```text
xlbuild -f all -p sys -F



     This compiles all files.
It also compiles programs whose name begin with "sys".
The -F forces compile even if the program or file was already
compiled.



xlbuild -c "sc " -p sc



     This compiles all programs that begin with "sc" and
whose category is sc.
It will not compile programs whose category is "scutil".
It will only compile programs that need to be compiled since
the -F flag was not specified.
```

## Description

xlbuild compiles 4C program specifications and 4C file specifications into a compact format that is interpreted at run time. Specifying a category name or a partial category name will compile only programs or files that match the category name. If you want a full match on category, file, or program names, then you may need to enclose the names in quotes and add a trailing blank. By default, xlbuild only compiles programs or files that it finds out of sync with the XLSEQFILE. To force a compile, you can specify "-F" or you can remove the XLSEQFILE.

## See Also

Back to Top

