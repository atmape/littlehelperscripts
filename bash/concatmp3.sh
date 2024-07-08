#!/bin/bash

# Concats mp3 File in the current directory into one mp3 file

if [ -z "$1" ]
then
	echo "Need argument MP3 Filename"	
	exit 1
fi

ffmpeg \
-f concat \
-safe 0 \
-i <(find "$(pwd)" -iname '*.mp3' -printf "file '%p'\n" | sort) \
-c copy \
"$1"

