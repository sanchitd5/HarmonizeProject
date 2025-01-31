#!/bin/bash
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root / with sudo!" 
   exit 1
fi
pacman -Syu
pacman -S git python3 python3-pip python3-requests python3-http-parser python3-dev libpython-dev libqtgui4 libqt4-test libgstreamer1.0-0 libjpeg62-turbo-dev libmbedtls12 libmbedtls-dev screen
echo "############### BASE DEPENDENCIES DONE - CHECK FOR ERRORS ###############" 
pacman -S install python3-opencv
echo "############### OPENCV DONE - CHECK FOR ERRORS ###############" 
echo "############### FULLY COMPLETE - CHECK FOR ERRORS ###############" 
exit
