#!/bin/bash
#requires mpv and youtube-dl to be installed
echo "stream URL:"
read STREAMURL
mpv $(youtube-dl -g "$STREAMURL")

read -p "Download Stream? (y/n) : " CONT
if [ "$CONT" == "y" ]; then
  echo "Downloading Stream";
  youtube-dl "$STREAMURL";
else
  echo "Exiting...";
fi
