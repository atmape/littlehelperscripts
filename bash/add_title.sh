#!/bin/bash

# Takes current Filename cuts mkv-Extensions and add this name to the file as title in metadata

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")

for file in $(ls *.mkv)
do
	echo "Current File: $file"
	title=$(echo "$file" | cut -d. -f1)
	mkvpropedit "$file" -e info -s title="$title"
done

IFS=$SAVEIFS
