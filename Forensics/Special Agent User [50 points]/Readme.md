# Special Agent User - 50 Points
We can get into the Administrator's computer with a browser exploit. But first, we need to figure out what browser they're using. Perhaps this information is located in a network packet capture we took: [data.pcap](https://webshell2017.picoctf.com/static/80c0964ceb0bd2c879a4c213775715ac/data.pcap). Enter the browser and version as "BrowserName BrowserVersion". NOTE: We're just looking for up to 3 levels of subversions for the browser version (ie. Version 1.2.3 for Version 1.2.3.4) and ignore any 0th subversions (ie. 1.2 for 1.2.0).

## Write-Up
This is a trivial problem that involves searching for some HTTP requests. First we open it up with wireshark. To check the version of the browser, we look at the user agent. We see a few requests done by `wget` (which is not what we want), but then after a while we see a user using a chrome browser. See screenshot:

![screenshot of wireshark](http://i.imgur.com/qt0fxTt.png)

We see that this person uses Chrome version 40.0.2214.