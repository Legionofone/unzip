#!/bin/sh

cd /downloads
while true
do
  if [ -e *.zip ]
  then
    for zip in /downloads/*.zip
    do
      echo "Unziping $zip"
      unzip "$zip" -d /downloads/
      rm -rf "/downloads/*.zip"
    done
  else
    echo "No zip files found"
  fi
  sleep 120
done
