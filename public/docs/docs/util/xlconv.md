# xlconv

## Purpose

xlconv converts a 4C data file to a new file type.

## Usage

```text
xlconv <option> [ <optarg> ] ...
```

## Options

-a `<new access method>`
-b `<new block method>`
-d `<spec dir>`
-f `<filename>` Mandatory
-n `<ext filename>`
-t `<new fld term>`
-D <directory for converted files>
- `-H` — help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlconv -f cust_mstr -a CISAM -D /tmp



     This reads all rcds in the cust_mstr file and writes a CISAM
file in the /tmp directory.
The blocking method will be the default for CISAM,
which is variable length rcds.



xlconv -f cust_mstr -b CIFIXED -D /tmp



     This reads all rcds in the cust_mstr file and
writes them to a new file in the /tmp directory
changing the blocking method to CIFIXED,
fixed len rcds for a CISAM file.
```

## Description

xlconv is used to convert data files to a new access or blocking method. Normally you will not need to use this unless you are changing to a different ISAM, such as CISAM. Or, if you are using CISAM, you may use xlconv to convert from fixed length rcds to variable length rcds or vice versa. It is not necessary, but you can specify both -a and -b options when converting a file. You must specify at least one of them.

## See Also

Back to Top


