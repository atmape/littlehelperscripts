#!/bin/bash

#converts flac files from current directory into mp3 with ffmpeg

for a in ./*.flac
do
  < /dev/null ffmpeg -i "$a" -qscale:a 0 -c:v copy "${a[@]/%flac/mp3}"
done

