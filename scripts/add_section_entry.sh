#!/bin/bash
# add_section_entry.sh
# Function to add an entry to a named section
# of a config file (.ini, .yml etc.), 
# where sections are separated by blank lines. 
# Example use: 
# $ add_section_entry config.ini '\[cls\]' "hello world"

add_section_entry() {
  FILE=$1
  if [[ ! -f "$FILE" ]]; then
    echo "** Can't find file $FILE.   Exiting."; return 0;
  fi

  SECTION=$2
  NEW_ENTRY=$3

  # Get line number of section header
		section_start=$(echo $(grep -nm 1 "^${SECTION}$" $FILE) \
		| awk -F":" '{print $1}' \
		| sed 's/\x1b\[[0-9;]*[a-zA-Z]//g')
		if [[ -z "${section_start// }" ]]; then
    echo "** Can't find section $SECTION in file $FILE.   Exiting."; return 0;
   fi
		# Get line number of nextblank line after section header
		section_length=$(echo $(tail --lines=+$section_start $FILE | grep -nm1 "^[[:blank:]]*$") \
		| awk -F":" '{print $1}' \
		| sed 's/\x1b\[[0-9;]*[a-zA-Z]//g')
		insert_point=$(($section_start + $section_length - 1))
   sed -i "$insert_point i$NEW_ENTRY" $FILE
}
