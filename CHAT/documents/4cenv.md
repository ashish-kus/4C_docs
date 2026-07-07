---
title: "4cenv"
weight: 1
draft: false
---

## Purpose

4cenv allows you to list 4c app names, display the environment settings of a 4c app, and to run binaries such as a shell using the environment of specific 4c app.

## Usage

```text
4cenv <option> [ <optarg> ] ...
```

## Options

- `-a <Application>` — A specific 4c application
- `-r <binary program>` — run program - synonym for -x
- `-x <binary program>` — execute program
- `-L` — List application names
- `-P` — Print application environment
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
4cenv -a AppDev -x sh


4cenv -L


4cenv -a AppDev -P


4cenv -a AppDev -x "xlkeys -f sys.program"
```

## Description

4cenv allows you to list 4c app names, display the environment settings of a 4c app, and to run binaries such as a shell using the environment of specific 4c app. 4cenv reads the _4CSRVRCONFIG file to determine how to set or display the environment. It does not check the permitted user or group list for an application. Any security you want this way should be implemented on the application directories and files. Any user using 4cenv should at a minimum have the _4CSRVRCONFIG environment variable set. In addition, it may be necessary to have the XLCONFIG and JISCONFIG environment variables set.

## See Also

Back to Top

