# sh()

## Purpose

`sh()` starts a copy of the shell to run a command.

## Usage

```text
ret = sh(<cmd>);
     or


ret = sh();
```

## Arguments

- `<cmd>` — The cmd to run, including all arguments.
The arguments and the command name must be separated
by spaces.
The `<cmd>` argument is optional, and if not used, an interactive copy of the
shell is started.
This can be useful for a menu entry.

## Returns

- `0` — 255 - The exit status of the shell.
- `-1` — Error starting shell or shell terminated with a signal.

## Where Used

`sh()` can be called from anywhere.

## Example

```text
cmd = "xled sys.pcl_stmt " + sys.ph_prname + ' ' + sys.ph_pclname;
sh(cmd);
```

## Description

`sh()` starts a copy of the shell to run a command. If arguments are passed to `sh()`, they are assumed to make up a command. The shell will be started with the '-c' option, passing all arguments to the shell to parse. If no arguments are passed to `sh()`, then an interactive copy of the shell is started. Which shell is used depends on the environment variable 'SHELL'. If not set, then '/bin/sh' is started. It is better to use `sh()` to run a command than `sys.make_task()` because you do not need to know the absolute path name of the command to run. The shell will use the 'PATH' environment variable.

## See Also

[`lsh()`]({{< ref "lsh.md" >}})

Back to Top

## See Also

- [lsh()]({{< ref "lsh.md" >}})


