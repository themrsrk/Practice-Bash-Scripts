#! /bin/bash

#Inotify basically monitors your directory

sudo mkdir -p /temp/NewFolder
inotifywait  -m  /temp/NewFolder #-m means monitor
