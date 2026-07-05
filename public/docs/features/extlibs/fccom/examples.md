# 4C FCCom External Library - Examples

[4C External Libraries Home]({{< ref "../_index.md" >}})[FCCom Home]({{< ref "_index.md" >}})

- Example 1 - Very simple example of fetching a single page from a normal web server. No authentication is required, SSL is not used and no content is required in the "GET" request. The most recent version of the 4c demo application duplicates this code almost verbatim. The program is fccom.demo.1. If you need to download the most recent 4c demo programs here's the link: [4C Demo Application](https://4csoftware.com/downloads/misc/demo.tar.gz) `/* * Allocate the connection, and specify the Server as 4csoftware.com * This will use the default http port 80. * reply content is set into the 4C var replycontent. * StatusMessage and StatusCode are displayed to the user and are saved in * the 4C variables statuscode and statusmsg. * Any error message is automatically displayed to the user. */ if ((connident = FCCom::Alloc("Server","4csoftware.com")) < 0) return -1; rc = FCCom::HttpRequest(connident,"GET","/index.html","reply-content",replycontent); sys.message(SM_INFO|SM_PIPEDELIM,"Status",FCCom::GetOption(connident,"Status"),"StatusMessage",FCCom::GetOption(connident,"StatusMessage")); statuscode = atoi(FCCom::GetOption(connident,"Status")); statusmsg = FCCom::GetOption(connident,"StatusMessage"); FCCom::Free(connident);`
- Example 2 - Another simple program that uses the google translate api to make a web service request to translate a short piece of text is fccom.demo.2. This program is included in the 4C demo application. It validates itself to google using an API Key specified in the query args of the FCCom::Httprequest using "POST". In order to run it without error, you will need to supply your own google cloud services api key. If you do have a google api key, you can set it in the InitPCL of this program rather than enter it every time you run the program. Even without an api key, you should run this application because you will still get a response from google with json content in the reply.
- Example 3 - Another example of using a "POST" HttpRequest is in the demo program fccom.demo.3. This program will send a text message using the twilio api. You will need a twilio account with an account sid, authorization token, and phone number to run this program. Twilio will use basic authorization using the acct sid as the username and the authorization token as the password. The body of the request is in application/x-www-form-urlencoded format and specifies the from phone number, the to phone number, and the text message to send. The reply from Twilio is in XML format. You can modify the InitPCL of this program to initialize the necessary variables with your own Twilio account info and avoid having to enter this info every time you run the program.

It should be super easy to follow the logic of the demo programs.
For formatting some of the replies, you may find it helpful to have
xmllint installed as well as jsonlint (install python-demjson).

Setting up a Twilio account and google cloud account is also easy and cheap.
Google will give you $300 credit for one year and Twilio
is about $1.00/month for a phone# and 1/2 cent per text message
sent or received.

