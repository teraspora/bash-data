#!/bin/bash

# I am www.sh and I like to live in /usr/local/bin!
# It's a good idea to alias me as `www`.
# Don't forget to make me executable with `chmod`.
# Usage: `www <dir-to-create> <title> <description>`

# Make a directory inside the current directory, (first arg should be the name of this),
# then change to it.
# Create index.html file, CSS file and JS file in appropriately named subdirectories.
# Fill in the title and description in the HTML file from the second and third arguments supplied, respectively.

mkdir $1
cd $1
cat <<EOF > index.html 
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Project name goes here</title>
    <meta name="description" content="Description goes here">
    <meta name="author" content="John Lynch">
    <link rel="stylesheet" type="text/css" href="styles/main.css">
</head>

<body>
    <canvas id="root-canvas">
    </canvas>

/* HTML content */
	
<script type="text/javascript" src="scripts/main.js"></script>

</body>

</html>

EOF

sed -i "s/Project name goes here/$2/" index.html
sed -i "s/Description goes here/$3/" index.html
mkdir styles
mkdir scripts
touch styles/main.css
touch scripts/main.js
echo -e "\n# Project $2 created at $PWD\n ==============================\n"

