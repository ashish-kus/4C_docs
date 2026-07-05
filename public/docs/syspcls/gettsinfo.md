# sys.get_tsinfo()

## Purpose

`sys.get_tsinfo()` returns date, time, and timestamp info for `<utcts>`

## Usage

```text
rc = sys.get_tsinfo(<dtiasfile>,<utcts>);
```

## Arguments

- `asfile <dtiasfile>` — The asfile for sys.dt_info that receives the timestamp info.
- `integer or integer64 <utcts>` — A UTC unix epoch timestamp.

## Returns

- `0` — OK
- `-1` — Error

## Where Used

`sys.get_tsinfo()` can be called from anywhere.

## Description

`sys.get_tsinfo()` returns date, time, and timestamp info for a single UTC Unix epoch timestamp. The info is returned in the fields of a sys.dt_info asfile. See the file definition for sys.dt_info for more info.

Requirements

4cserver 6.4.7-07 or later

When time is switching between daylight time and standard time, the same date and time can have 2 different valid timestamps, one using DT and one using ST. When this is the case the dti_alttimestamp will have the alternate timestamp. An example for this is the 2020-11-01 anytime between 1:00:00am and 1:59:59am for any USA location that uses daylight savings time.

When time is switching between standard time and daylight time, there is one hour that does not really exist but [`sys.get_dtinfo()`]({{< ref "getdtinfo.md" >}}) will return the info for that date and time as if it did exist but the fields in the sys.dt_info file will have the correct date and time on return. An example of this is 2020-03-08 anytime between 2:00:00am and 2:59:59am for any USA location that uses daylight savings time.

## See Also

[`sys.get_dtinfo()`]({{< ref "getdtinfo.md" >}})

Back to Top

## See Also

- [sys.get_dtinfo()]({{< ref "getdtinfo.md" >}})


