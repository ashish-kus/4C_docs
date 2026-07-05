# 4C Logging Change Log

[4C Logging Home]({{< ref "_index.md" >}})

## 26 August 2020

- 4C File logging allows you to specify "*" for the log detail filename and just a directory name for the external name of logged files making it easy to log all files in a directory. You can exclude files that you don't want logged by specifying checking the "Ignore 4C Logging" chkbox (sys.fh_nologf = 'y') in the main file definition screen.
- 4C File logging allows using JISAM32 or JISAM64 for the log_idx file.
- 4C File logging allows using eiher a "Short" or "Long" naming convention for the log_data sequential files. The "Short" style will overwrite log_data files every 28 - 31 days depending on the month. The "Long" style is never automatically overwritten but should still be purged regularly.
- The date and time used to key the log_idx and log_idx64 files are UTC date and time. This fixes the problem of updates happening during the fall switch to std time. The 4C program that displays the log details converts this time to local time for display.
- Though not new, there is a program logging facility that has only recently been documented. See [4C program logging overview]({{< ref "prlogov.md" >}})

