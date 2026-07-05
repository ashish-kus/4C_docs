# xlscopy

## Purpose

xlscopy copies text data from a text file to the text data fields of a 4C sequenced file.

## Usage

```text
xlscopy <option> [ <optarg> ] ...
```

## Options

-c `<count>`
- `-d <spec directory> corresponds to 4C file` — 2nd -f
-f `<filename>` must be specified twice
- `-n <ext file name> corresponds to 4C file` — 2nd -f
-s `<start keys>`
- `-H` — Help

## Returns

- `0` — Normal Exit
- `1` — Error Exit

## Example

```text
xlscopy -f readfile.p -f sys.spcl_help -s sys.read_file



     This reads the text file readfile.p and for each line
read writes one rcd to the sys.spcl_help file.
Rcds written to the sys.spcl_help file will have keys




sys.readfile    0001
sys.readfile    0002
sys.readfile    0003
sys.readfile    0004
etc




     If there are rcds in the sys.spcl_help file with keys
"sys.readfile    0005" thru "sys.readfile    9999",
they will be deleted.
```

## Description

xlscopy reads a sequential text file, specified by the 1st -f option and writes rcds to a 4C sequenced file. The -f option must be specified twice. The 1st -f identifies the sequential file by its op sys name, and the second -f identifies the 4C file by its 4C name. The sequential file does not need to have a 4C file definition. All primary key fields preceding the sequence number must be specified by -s options. Any trailing rcds in the 4C data file with the same starting keys will be deleted.

## See Also

xlupd

Back to Top

## See Also

- [xlupd]({{< ref "xlupd.md" >}})


