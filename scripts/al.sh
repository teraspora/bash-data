#!/bin/bash
# Quickly make a persistent alias
echo "alias $1='$2'" >> ~/.bash_aliases
. ~/.bash_aliases
