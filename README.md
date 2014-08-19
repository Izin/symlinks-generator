Symlinks Generator
==================

This script was create to help Linux iconset makers creating symbolic links
quickly and easely.

###Installation
```bash
cd your_folder
git clone
```

###Use
Open the .sh with your favorite editor and change the value for DIR and EXT.
Then open it in a terminal with this command:
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