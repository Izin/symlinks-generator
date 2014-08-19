#Symlinks Generator 2.5

![Banner](https://github.com/maloblanchard/symlinks-generator/blob/dev/banner.jpg "Symlinks Generator")

I originally created this to help [fsvh](https://github.com/fsvh) making it's
[Captiva Icon Theme](https://github.com/captiva-project/captiva-icon-theme).
This script prompts the user for what icon he wants to create symlinks, and
create the symlinks in the specified directory for every dimensions (16, 24...).


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