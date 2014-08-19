#Symlinks Generator 2.5

![Banner](https://github.com/maloblanchard/symlinks-generator/blob/dev/banner.jpg "Symlinks Generator")

I created this script to help Linux iconset makers who want's to quickly
generate symbolic links for their new icons.


###Use
1. Open the .sh with your favorite editor and change the value for DIR
2. Open the .sh in a terminal


###Required
Your icon folder tree has to respect this structure (example):
```
├── YourThemeFolder
│   ├── 16x16
│   │   ├── apps
│   │   │   ├── terminator.png
│   │   │   └── ...
│   │   ├── web
│   │   │   ├── firefox.png
│   │   │   └── ...
│   │   └── ...
│   ├── 64
│   │   ├── apps
│   │   │   ├── terminator.png
│   │   │   └── ...
│   │   ├── web
│   │   │   ├── firefox.png
│   │   │   └── ...
│   │   └── ...
│   └── ...
```


###Bugs
If you find a bug please [contact me](http://maloblanchard.com/contact).


###Changelog
```
v2.5
 - Complete rewrite of the code
 - The script checks if variables are empty
 - More understandable variables names
v2.4
 - New interface
 - Fixing bad symlink path
```