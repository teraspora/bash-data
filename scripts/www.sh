#!/bin/bash
# www.sh
# Make a directory inside the current directory, copy frontend tamplate file structure to it, then change to it
mkdir $1
cd $1
cp -r /media/john/sys2/web18/playground/templates/web_fe/* .
sed -i "s/title>/title>$2/" index.html
sed -i "s/description\" content=\"/description\" content=\"$3/" index.html
