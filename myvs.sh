#!/bin/bash

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
