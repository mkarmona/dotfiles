#!/bin/bash

ffmpeg -i "$1".mkv -vcodec libx264 -preset slow -crf 22 -threads 0 "$1"-final.mkv
