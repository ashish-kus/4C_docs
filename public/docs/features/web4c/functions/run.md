# req4c_run()

## Purpose

`req4c_run()` runs a 4C program and returns a req4c ResultSet.

## Usage

```text
$resultset = req4c_run(<prog>[,<arg1>][,<arg2>]...[,<argn>][,<pfarray>],[<vvarray]);
```

## Arguments

- `<prog>` — The program to run.
- `<arg1>-<argn>` — String arguments to the program
- `<pfarray>` — A numerically indexed array specifying the exact output
fields you want.
This argument is optional and if not specified,
all output fields are returned to the PHP program.
- `<vvarray>` — An array (either associative or numeric) of values
that should be set before the InitPCL of the 4C program runs.
This argument is optional.

## Returns

- `false` — Error
- `$resultset` — The ResultSet returned by the 4C program.

## Where Used

`req4c_run()` can be called from anywhere.

## Example

```text
/*
 * Run program web.test.1 with no arguments
 */
$resultset = req4c_run("webtest.1");
/*
 * Run program web.test.1 with argv[1]set to "hello" and argv[2] set to "world"
 */
$resultset = req4c_run("webtest.1","hello","world");
/*
 * Run program web.test.1 with argv[1]set to "hello" and argv[2] set to "world"
 */
$resultset = req4c_run("webtest.1,hello,world");
/*
 * Two ways of passing data in to named variables in the program
 * Use an associative array
 */
$vvarray = array ('fname' => "John",
                   'minitial' => "J",
                                   'lname' => "Smith");
$resultset = req4c_run("webtest.1",$vvarray);
/*
 * Or use a numerically indexed array
 */
$vvarray = array('fname=John','minitial=J','lname=Smith');
$resultset = req4c_run("webtest.1",$vvarray);
```

## Description

`req4c_run()` is the only way that a PHP program runs 4C programs. If there is a req4c session in use, `req4c_run()` will use that session and session information is sent to the 4csrvr process. If there is no session in use, `req4c_run()` will use the default FCServer and FCApp configured for 4creqd. There are two ways that `req4c_run()` can pass data to the 4C program.

Data can be passed as arguments and the 4C program can look at argc and argv. Data passed as arguments are just passed as individual strings. However, you can also pass arguments as part of program name. Just separate everything with commas. Doing it that way is a little awkward in PHP so it is probably better most of the time to pass arguments to the 4C program as separate arguments to `req4c_run()`.

Data can also be placed in a varvalue array and that array is passed as an argument to `req4c_run()`. The varvalue array can be a numerically indexed array where each entry is of the type "`<name>`=`<value>`" or it can be an associative array where vvarray['name'] contains `<value>`. In either case if `<name>` is a file var known by the 4C program, it will convert the string `<value>` to the appropriate type and store that value in the file var. If `<name>` is not known to the 4c program, it does not cause an error.

`req4c_run()` does not return to the PHP program until the 4C program it called exits. Make sure when you write 4C programs callable by PHP programs that you make sure they exit appropriately. They should not exit the 4C srvr process, just all running 4C programs.

Also, keep in mind that different calls to `req4c_run()`, even from within the same PHP program may actually execute the 4C program using different 4C processes.

## Bugs/Features/Comments

`req4c_run()` requires a round trip network request between the PHP request and the 4creqd process and one between the 4creqd process and a 4csrvr process.

`req4c_run()` clears the current message list

## See Also

All req4c functions

Back to Top

## See Also

- [req4c Docs]({{< ref "../req4cindex.md" >}})
- [req4c Function List]({{< ref "_index.md" >}})
- [All req4c functions]({{< ref "_index.md" >}})


