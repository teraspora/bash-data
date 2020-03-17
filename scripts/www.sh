#!/bin/bash

# in /usr/local/bin
# www.sh
# Should be aliased to `www`.
# Usage: `www <dir-to-create> <title> <description>`

# Make a directory inside the current directory, (first arg should be the name of this),
# copy frontend template file structure to it, then change to it.
# Fill in title and description from arguments supplied

mkdir $1
cd $1
cp -r /media/john/sys2/web18/playground/templates/web_fe/* .
sed -i "s/Some web project/$2/" index.html
sed -i "s/dummy content/$3/" index.html
subl .



