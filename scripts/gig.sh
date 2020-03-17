#!/bin/bash

# ig.sh
# echo a list of files into .gitignore, then print it to stdout
for pathstr in "$@"
do 
    echo "$pathstr" >> ./.gitignore;
done
    echo ".gitignore:";
    echo "-----------";
    cat .gitignore;
    echo '';