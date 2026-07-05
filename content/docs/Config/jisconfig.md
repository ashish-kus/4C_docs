---
title: "JISCONFIG"
weight: 6
draft: false
---

JISCONFIG is used to define options necessary
for JISAM to work.
Use the isconfig program for setting these options.
The most important thing to know about JISCONFIG
is that all processes that may access the same
JISAM file absolutely must use the same JISCONFIG
file.
For this reason, the best place to define the
JISCONFIG environment variable is in _4CSRVRCONFIG.

To see the options that can be specified for JISCONFIG
run isconfig with no options.
You should rarely want to change any of the default options
other than:

- -f - Max number of open JISAM files
- -F - Max number of open files per user
- -b - Number of JISAM buffers
- -B - Max number of buffers per file
