#!/bin/sh

DIR="/your/theme/folder"


# DO NOT TOUCH AFTER!
# --------------------------------------------------------------------------- #

# Variables
firstFolder="$(cd ${DIR} && find * -type d -prune | head -1)"
subFolders="$(cd ${DIR} && find * -type d -prune)"

# Functions
function err1() {
  echo " /!\ The script must be launched WITHOUT sudo /!\ "
  echo ""
  exit
}
function err2() {
  echo " /!\ The icons theme folder doesn't exist /!\ "
  echo ""
  exit
}
function err3() {
  echo "               | -- Can't reach folder, retry --"
}
function err4() {
  echo "               | -- Can't reach file, retry --"
}
function err5() {
  echo "               | -- No link specified, retry --"
}
function err6() {
  echo "               | -- « $1 » already exist --"
}
function header() {
  clear
  echo "# ============================================== #"
  echo "#      S Y M L I N K S     G E N E R A T O R     #"
  echo "# ============================================== #"
  echo ""
}
function checking() {
  if [[ "$(id -u)" = "0" ]]; then
    err1
  fi
  if [[ ! -d $DIR ]]; then
    err2
  fi
}
function readIconFolderName() {
  bool=true
  echo -n "1. Icon dir.   | "
  read iconFolder
  if [[ ! -d ${DIR}/${firstFolder}/${iconFolder} || ${iconFolder} = "" ]]; then
    err3
    while $bool; do
      echo -n "               | "
      read iconFolder
      if [[ ! -d ${DIR}/${firstFolder}/${iconFolder} || ${iconFolder} = "" ]]; then
        err3
      else
        bool=false
      fi
    done
  fi
}
function readIconName() {
  bool=true
  echo -n "2. Icon name   | "
  read iconName
  if [[ ! -f ${DIR}/${firstFolder}/${iconFolder}/${iconName} ]]; then
    err4
    while $bool; do
      echo -n "               | "
      read iconName
      if [[ ! -f ${DIR}/${firstFolder}/${iconFolder}/${iconName} ]]; then
        err4
      else
        bool=false
      fi
    done
  fi
}
function readLinksFolderName() {
  bool=true
  echo -n "3. Links dir.  | "
  read folder
  if [[ ! -d ${DIR}/${firstFolder}/${folder} || ${folder} = "" ]]; then
    err3
    while $bool; do
      echo -n "               | "
      read folder
      if [[ ! -d ${DIR}/${firstFolder}/${folder} || ${folder} = "" ]]; then
        err3
      else
        bool=false
      fi
    done
  fi
}
function readLinksNames() {
  bool=true
  echo -n "4. Links name. | "
  read linksNames
  if [[ ${linksNames} = "" ]]; then
    err5
    while $bool; do
      echo -n "               | "
      read linksNames
      if [[ ${linksNames} = "" ]]; then
        err5
      else
        bool=false
      fi
    done
  fi
}

# Application
header
checking
while true; do
  readIconFolderName
  readIconName
  readLinksFolderName
  readLinksNames
  for link in $linksNames; do
    if [ -f ${DIR}/${firstFolder}/${folder}/${link} ]; then
      err6 ${link}
      read -p "               | Replace it? [y/n] " key
      if [ "$key" = "y" ]; then
        for subFolder in ${subFolders}; do
          rm ${DIR}/${subFolder}/${folder}/${link} 2>/dev/null
        done
      fi
    fi
    for subFolder in ${subFolders}; do
      cd ${DIR}/${subFolder}
      rm ${folder}/${link} 2>/dev/null
      ln -s ../${iconFolder}/${iconName} ${folder}/${link}
    done
  done
  echo ""
  echo "# ---------------------------------------------- #"
  echo ""
done

exit