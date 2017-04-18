# Meta Find Me - 70 Points
Find the location of the flag in the image: [image.jpg](https://webshell2017.picoctf.com/static/f6fddfa14e1bbdfa83b65896bc6ba66c/image.jpg). Note: Latitude and longitude values are in degrees with no degree symbols,/direction letters, minutes, seconds, or periods. They should only be digits. The flag is not just a set of coordinates - if you think that, keep looking!
## Write-Up
I first opened the file in a hex editor to search up "flag". I happened to stumble upon a message, hidden as a comment of the PNG file:
```
"Your flag is flag_2_meta_4_me_<lat>_<lon>_1c84. Now find the GPS coordinates of this image! (Degrees only please)"
```
Now I know I need to search for a location (latitude and longitude) of this file, which I found by looking into the properties (meta data) of the file:

![Screenshot](http://i.imgur.com/IqKoLit.png)

I use these coordinates, and the resulting flag is `flag_2_meta_4_me_7_100_1c84`.