---
title: "4C FCJSon External Library - Examples"
weight: 1
draft: false
---

[4C External Libraries Home]({{< ref "../_index.md" >}})[FCJSon Home]({{< ref "_index.md" >}})

- Example 1 - fccom.demo.2 A simple program that uses the google translate api to make a web service request to translate a short piece of text. It has an example of both use cases for FCJSon, creating JSon content and consuming JSon content. The JSon content created is a sent as the body of the FCCom::HttpRequest to google and the JSon content consumed is received in the body of the reply from google. In order to run it without error, you will need to supply your own google cloud services api key. If you do have a google api key, you can set it in the InitPCL of this program rather than enter it every time you run the program. Even without an api key, you should run this application because you will still get a response from google with json content in the reply.
- Example 2 - fcjson.demo.1 This program uses the google maps api to send an FCCom GET HttpRequest to get the elevation in meters of up to 10 different pts on the earth. The response is a JSon file that we parse and extract the information from. If you do not have a google cloud apikey, this program will still run, except there will be limits on how many requests you can make in short time periods. If you do have a google api key, you can set it in the InitPCL of this program rather than enter it every time you run the program.
- Example 3 - fcjson.demo.2 This program uses info from 2 4c bootstrap files, sys.program and sys.dpy_field, to create a JSon file with arrays, nested objects, integers, strings and booleans. It demonstrates most of the concepts needed to create JSon content. It also uses the file that it built to demonstrate more ways to consume json data.

It should be super easy to follow the logic of the demo programs.
For formatting some of the replies, you may find it helpful to have
xmllint installed as well as jsonlint (install python-demjson).

All of the above examples are in the 4c demo application.

If you need to download the most recent 4c demo programs here's the link:
[4C Demo Application Back to Top](https://4csoftware.com/downloads/misc/demo.tar.gz)
