#!/bin/bash

ffmpeg -f x11grab -r 25 -s 1366x768 -i :0.0 -vcodec libx264 -preset ultrafast -crf 0 -threads 0 "$1".mkv

