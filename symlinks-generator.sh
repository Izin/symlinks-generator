#!/bin/sh

DIR="/your/directory"
EXT="png"


# DO NOT TOUCH AFTER!
# --------------------------------------------------------------------------- #

# Variables
firstFolder="$(cd ${DIR} && find * -type d -prune | head -1)"
subFolders="$(cd ${DIR} && find * -type d -prune)"
bool1=true
bool2=true
bool3=true

# Application
clear
echo "# ============================================== #"
echo "#           SYMLINKS GENERATOR  2.4.4            #"
echo "#                                                #"
echo "#          <contact@maloblanchard.com>           #"
echo "# ============================================== #"
echo ""
if [ "$(id -u)" = "0" ]; then
  echo ""
  echo " /!\ The script must be launched WITHOUT sudo /!\ "
  echo ""
  exit
fi
if [ ! -d $DIR ]; then
  echo ""
  echo " /!\ The folder « $DIR » doesn't exist /!\ "
  echo ""
  exit
fi
while true; do
  while $bool1; do
    echo -n "1. Icon dir.  : "
    read iconFolder
    if [ ! -d ${DIR}/${firstFolder}/${iconFolder} ]; then
      echo "   /!\ This folder doesn't exist /!\ "
    else
      bool1=false
    fi
  done
  while $bool2; do
    echo -n "2. Icon name  : "
    read iconName
    if [ ! -f ${DIR}/${firstFolder}/${iconFolder}/${iconName}.${EXT} ]; then
      echo "   /!\ This file doesn't exist /!\ "
    else
      bool2=false
    fi
  done
  while $bool3; do
    echo -n "3. Links dir. : "
    read folder
    if [ ! -d ${DIR}/${firstFolder}/${folder} ]; then
      echo "   /!\ This folder doesn't exist /!\ "
    else
      bool3=false
    fi
  done
  echo -n "4. Links names: "
  while read links; do
    for link in $links; do
      if [ -f ${DIR}/${firstFolder}/${folder}/${link}.${EXT} ]; then
        echo "   /!\ The file « ${link}.${EXT} » already exists /!\ "
        read -p "   Do you want to replace it? [y/n] " key
        if [ "$key" = "y" ]; then
          for subFolder in ${subFolders}; do
            rm ${DIR}/${subFolder}/${folder}/${link}.${EXT} 2>/dev/null
          done
        fi
      fi
      for subFolder in ${subFolders}; do
        cd ${DIR}/${subFolder}
        rm ${folder}/${link}.${EXT} 2>/dev/null
        ln -s ../${iconFolder}/${iconName}.${EXT} ${folder}/${link}.${EXT}
      done
    done
    break
  done
  echo ""
  echo "# ---------------------------------------------- #"
  echo ""
  bool1=true
  bool2=true
  bool3=true
done
exit