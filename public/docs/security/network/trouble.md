# trouble

In the event that you cannot connect to
the 4csrvr try some of the following.

- Review messages in auth.log
- Enable logging in _4CSRVRCONFIG and then review messages in the log file.
- Run the 4csrvrd from a command line and in the foreground without redirecting output to a file like the following: `cd HOME_4C/ . ./4Crc cd etc ./4csrvrd --fg`
- Verify that the correct LogonSecurity is set in _4CSRVRCONFIG
- See the troubleshooting section of the install notes.

