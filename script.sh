#!/bin/sh

cd /downloads
while true
do 
  for zip in ./*.zip
  do
    unzip zip
  done
  sleep 120
done
