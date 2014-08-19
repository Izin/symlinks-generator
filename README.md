Symlinks Generator
==================

I created this script to help Linux iconset makers who want's to quickly
generate symbolic links for their new icons.

###Use
1. Open the .sh with your favorite editor and change the value for DIR and EXT.
2. Open the .sh in a terminal with this command:
```bash
bash symlinks-generator.sh
```

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
```

###Bugs

If you find a bug please [contact me](http://maloblanchard.com/contact).