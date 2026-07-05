# Making Charts in 4C

## 17 April 98

4C now allows the application to display charts on
the client machine.
The program that displays the chart is called chart4c
and is included with the Win95 4C client.
The way this works is for the server to build
a template file on the client and then tell the
client to run the chart4c program.
One method of doing this is demontrated in the
tmp.chart.demo program in the 4c bootstrap directory.

The format of the chart file on the client is as follows.
Each line consists of a type followed by
one or more data fields.
The type must start as the first character of the line and data fields
must be separated from the type and each other by tabs.
Lines that start with a '#' are comments and ignored.
Unrecognized types are also ignored.

The types currently recognized are:

1. Chart This must be the first line in the file and is used to indicate global options for the chart.
2. Data This is used to specify the data that that goes into the chart.
3. XData This is used to specify the x-data that that goes into the chart. This is only applicable to scatter charts. When used there should be as many x-data elements as data elements.
4. Legend This is used to specify legends.
5. SeriesLegend Specifies series legends
6. Option Miscelaneous options.
7. Font Create a new font to be used in subsequent SetFont lines.
8. SetFont Use the current font for specific items.
9. Exec Execute a command.

The Chart line has one data field with it that is composed of a series
of options separated by commas.
Some of the options have values which are set by using an '='
between the option and the value.
Unrecognized options are ignored.
The current options allowed are:

1. Type=`<type>` where `<type>` is one of Bar,Line,Pie or Scatter. New types may be added later if necessary. For possible new types, please see the ChartFX online documentation. Look under DLL Help/Function Reference/chart_Create/ChartTypesTable.
2. Title=`<title>`
3. Series=`<n>` This specifies the number of series in the chart and should match up with the data specified.
4. Values=`<n>` This is the number of values specified for each series.
5. Width=`<width>` The width of the chart in pixels.
6. %Width=<%width> The percent width that should be used for the chart. 100 will use full width of screen. If you specify this you should also specify Height or %Height.
7. Height=`<height>` The height of the chart in pixels.
8. %Height=<%height> The percent height that should be used for the chart. 100 will use full height of screen. If you specify this you should also specify Width or %Width.
9. Legend OBSOLETE. If specified, then this series may have a legend. This should now be specified in an Option line.
10. SeriesLegend OBSOLETE. If specified then this chart may have a series legend. This should now be specified in an Option line.

The Data line has two data fields.
The first data field specifies the series that the data belongs
to and the second data field specifies the values.
Values are separated by commas.
More than one data line can specify the same series as long
as they are contiguous.
Thus,

```text
Data 01 1.5,2.0,3.5,4

is eqivalent to

Data 01 1.5,2.0
Data 01 3.5,4
```

The XData line is specified the same as the Data line.
It is applicable only to scatter charts.

The Legend line has one data field that consists of the
legends separated by commas.

The SeriesLegend line has two data fields.
The first data field specifies the series that the legend
belongs to and the second is the legend for that series.

The Option line can contain multiple options separated
by commas.
Multiple option lines are also OK.
Options that can be specified are:

1. Min=`<min>` Min value instead of 0.
2. XMin=`<xmax>` Min value along x-axis instead of 0.
3. Max=`<max>` Maximum value used on the y-axis.
4. XMax=`<xmax>` Maximum value used along the x-axis.
5. Gap=`<gap>` Gap between labels on the y-axis.
6. XGap=`<xgap>` Gap between labels on the x-axis.
7. Scale=`<scale>` Scaling factor along the y-axis. Useful if using very large numbers.
8. XScale=`<xscale>` Scaling factor along the x-axis.
9. TopTitle=`<ttitle>`
10. BottomTitle=`<btitle>`
11. LeftTitle=`<ltitle>`
12. RightTitle=`<rtitle>`
13. Legend This will display the legend window.
14. SeriesLegend This will display the series legend window.
15. ShowPoints This will show the points in the chart. Not applicable to all chart types.
16. ShowValues This will show the values of the points on the chart. Not applicable to all chart types.
17. ShowLines This will draw lines between the points on the chart. Not applicable to all chart types.
18. NoDisplay Chart will not be displayed on screen. Useful if all you want to do is create and save a bitmap file.
19. WriteBmp=`<filename>` This will cause the chart to be written as a bitmap file to `<filename>`. To convert a bitmap file to another type of image file, you will need a separate utility. The bmp file is created exactly when this option is encountered. So, options specified farther on will not show up in the bmp file.
20. Depth=`<depth>` This reduces or increases the 3d effect. This can be set to any integer value from 0 to 1000. Values higher than 120 will normally not be used. The default is around 40, so to decrease the 3d effect, set depth to 20, to increase it, set it to 60.
21. Grid=`<grid>` This is used to turn on the Vertical or Horizontal grid lines. The value of `<grid>` can be Vert, Horz, Both, or None. Only the last Grid=`<grid>` option has any affect on the initial chart.

The Font line has one data field with it that is composed of a series
of characteristics separated by commas.
The font lines specifies the font to be used in all subsequent
SetFont calls until a new Font line is encountered.
The characteristics that you can specify are:

1. Facename=`<facename>`
2. Pointsize=`<ptsize>`
3. Bold
4. Dim
5. Italic
6. Underline or UL

The SetFont line has one data field composed of the elements
you want to use the current font for.
The elements that you can set the font for are:

1. TopTitle
2. BottomTitle
3. LeftTitle
4. RightTitle
5. YLegend
6. XLegend
7. Legend
8. Constants
9. Values
10. Points

The Exec line has one data field which is the command that you
want to execute.
Separate arguments to the command by spaces.
This is especially useful for converting a bmp file to
a different type.

Several simple chart templates are in the chartdata`<n>`.txt files.
Experiment with chart4c using these files.
Just call up chart4c passing it the name of a file.
Modify the fields in the file to see what effect they
have.

You should especially note the way legends and series legend
work when the legend name is long and when the Legend or SeriesLegend
is specified and is not specified in the Chart line.

