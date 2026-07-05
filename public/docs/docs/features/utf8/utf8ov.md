# 4C UTF8 Overview

[UTF8 Home]({{< ref "_index.md" >}})
With version 6.4 and later 4C is moving a little more into the modern world by allowing UTF8
data in 4C fields.
This not meant to be a tutorial on UTF8 or Unicode.
It is just an introduction on how to use UTF8 encoding with 4C.

#### Some of the reasons this is necessary follow

- Almost all data that is sent across the internet is UTF8 encoded and it is impossible for 4C programs to ignore this. This includes data returned by Web Service APIs as well as data embedded in html pages.
- If your application sends and receives text messages, responses will certainly include emojis that you may need to display. Using the 4C utf8 datatype allows displaying emojis.

#### Requirements

- In order to use UTF8 encoding in 4C data, you must use version 4csrvr 6.4.3 or later.
- In order to display UTF8, the 4cclient must also be version 6.4.3 or later. If you use an earlier client and there are no multibyte characters, the data will display correctly but any multibyte data will not. No earlier 4cclient will be able to enter multibyte characters in a UTF8 field.
- Any 4C fields that are going to allow UTF8 encoding must use a datatype with the 4C Type set to utf8. In the 4CSys application there is a utf8 datatype and it is also defined in the skeleten application file skel.df. Your application will also need to have a similar datatype defined.

#### Misc notes

- Any 100% 7bit ascii data is also valid UTF8 data so it is possible to change the data type of 100% 7bit ascii data to a UTF8 datatype without any issues.
- If you have extended ansi characters in any alpha data you should remove them before changing the datatype of the field to a UTF8 datatype.
- The 4C utf8 datatype works almost anywhere you can use the 4C alpha datatype. This includes, but is not limited to As a screen display field or label. As an argument to sys.message(), sys.msg(), or sys.err_msg() With ProgressBar windows With sys.get_answer() As Tab Labels As a Panel title
- It is not advisable to use UTF8 data as a primary or secondary key with JIsam files.
- Most SysPCLs that work with 7bit ascii strings will also work with UTF8 strings. There may be some exceptions though. If you find any, please let me know so that I can document them.
- You can concatenate UTF8 strings with 7bit ascii strings and the results will be a UTF8 string.
- The length of a UTF8 filevar with multibyte characters is the number of bytes in the filevar, not the number of unique UTF8 characters. If you want the count of UTF8 characters, use [sys.utf8_count()]({{< ref "../../SysPCLs/utf8count.md" >}})

#### Examples

- The best example program in the 4c Demo application is demo.translate.1. There you can see UTF8 being used in dropdown lists and in long text fields. You will need to use your own google API key to actually do the translations.

#### SysPCLs

The following SysPCLs are useful when working with UTF8 data

- [sys.cp_toutf8()]({{< ref "../../SysPCLs/cptoutf8.md" >}})
- [sys.utf8_charat()]({{< ref "../../SysPCLs/utf8charat.md" >}})
- [sys.utf8_count()]({{< ref "../../SysPCLs/utf8count.md" >}})
- [sys.utf8_fix()]({{< ref "../../SysPCLs/utf8fix.md" >}})
- [sys.utf8_join()]({{< ref "../../SysPCLs/utf8join.md" >}})
- [sys.utf8_split()]({{< ref "../../SysPCLs/utf8split.md" >}})
- [sys.utf8_tocp()]({{< ref "../../SysPCLs/utf8tocp.md" >}})
- [sys.utf8_verify()]({{< ref "../../SysPCLs/utf8verify.md" >}})

