---
title: "XLCONFIG"
weight: 9
draft: false
---

XLCONFIG is used to define the size
of shared memory and the number of
file definitions and program definitions
that will be kept in shared memory for
faster startup time.
Processes that use the same XLCONFIG,
use the same shared memory and will get file
definitions and program definitions from the
shared memory cache.
The best place to set the XLCONFIG env var is in
_4CSRVRCONFIG.

Here are some options that can be set
using XLCONFIG:

- SysMemory `<numkbytes>` [ `<num segments>` ] To specify 4 meg of shared memory, use: `SysMemory 4096 1`
- SysAddr `<addr>` This tells 4C what address to attach the 4C shared mem segment at. You should not need to change the value in the default 4CConfig file unless you are getting errors running the application that tell you to change this.
- JISAMAddr `<addr>` This works the same as SysAddr, expect it is for the JISAM shared mem segment.
- Files `<nfiles>` `<nfiles>` is the number of file definitions that you want to keep in shared memory. It is not necessary to keep all file definitions in shared memory at the same time. 4C will read file definitions into shared memory as needed and swap out the least recently used file def if necessary. An `<nfiles>` file of 300 is sufficient for most systems.
- Programs `<nprograms>` This works the same as Files, except for program definitions. An `<nprograms>` value of 100 is sufficient for most systems.
- Users `<max4cprocesses>` The maximum number of 4c processes you want to allow to connect. Since each 4c user may be running 2 or more processes this number should be set to about three times the number of people actually connecting. This options should probably be taken out and there should not be a limit on number of proceses.
- MultiLockOK `<TrueOrFalse>` This is a hack for applications that may allow locking the same record more than once during the same update.
- FCPort `<portno>` The portnum that the 4csrvrd process is listening for connection requests on. This is necessary for xlbuild to work from the command line.
- ErrLogFile `<errlogfilename>` The name of a file for logging errors.
- ErrLog All
- MaxCoreFileSize `<size>` This may be necessary on some systems to allow core files to be created for debugging. You can ignore it for the most part. It's probably better to put the following lines in the run4c.sh script. `ulimit -c unlimited # # This line may need to be duplicated in a cron script as well to guarantee # core files dont persist forever # find $HOME_4C/tmp -name core\* -mtime +7 -exec rm -f {} \;`
- SysScratch `<filename>` [ `<filename>` ... ] Specify the filenames of any system scratch files that you want to have pre allocated in shared mem. This is not usually necessary unless there is not enough shared mem available when you try to use them.
- SvTimeout `<nsecs>` [ `<program>` ] or Timeout `<nsecs>` [ `<program>` ] Specify this if you want an idle 4csrvr process to timeout after `<nsecs>` and run `<program>`. If you don't specify `<program>`, then the 4csrvr process will exit.
- ClTimeout `<nsecs>` [ `<program>` ] Specify this if you want an idle 4C client process to timeout after `<nsecs>` and run `<program>`. If you don't specify `<program>`, then the 4C client process will exit. On 4csrvr versions earlier than 4.8, ClTimeout only works if there is no SvTimout or Timout specified.

Currently, neither SvTimeout or ClTimeout are triggered when
waiting on sys.err_msg() or sys.message().
sys.get_answer() does not have this problem.

The SysMemory, Files, and Programs options must be configured
in a way to make maximum use of shared memory without overflowing it.
There are several ways to determine if your system is configured
correctly.
The easiest is to run the 4C program sys.mem.summary,
which is part of the 4cSys application.
Watch out for any kind of fault.
This may imply one or more of:

- Not enough shared memory allocated
- Too many Files specified
- Too few Files specified
- Too many Programs specified
- Too few Programs specified

You should monitor a newly installed system by running this program
during peak usage and also when system usage changes.

Please see
[Configuring 4C Shared Memory]({{< ref "sysmem.md" >}})
for some hints on best practices for configuring 4c shared memory
