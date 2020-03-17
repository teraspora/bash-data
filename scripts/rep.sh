#!/bin/bash
# rep.sh
# Author:	John Lynch (August 2019)
# Use:		Replace a string globally in a file
# Usage:	rep foo.txt 'old-string' 'new-string'
sed -i "s/$2/$3/g" $1
