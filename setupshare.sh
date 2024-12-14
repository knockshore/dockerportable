#! /bin/bash

# The Windows folder needs to be shared appropriately
WINDOWS_DIR_PATH="//10.0.2.2/repos"
MNTPOINT="/repos"
WIN_USERNAME=karti

if [ ! -d "$MNTPOINT" ]; then
  mkdir $MNTPOINT
fi

if [ -z "$WIN_USERNAME" ]; then
  echo "Please set WIN_USERNAME in .bashrc"
  exit 1
fi

umount $MNTPOINT > /dev/null 2>&1
umount /f > /dev/null 2>&1
echo "Use your Windows password to mount $WINDOWS_DIR_PATH at $MNTPOINT"
mount -t cifs -o vers=3.0,username=karti,password=zaq,mfsymlinks,soft,file_mode=0777,dir_mode=0777 "$WINDOWS_DIR_PATH" "$MNTPOINT"
