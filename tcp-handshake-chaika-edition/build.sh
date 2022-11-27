#!/bin/sh

start=16:13.95
end=16:18.92
ffmpeg -i subtitles.ass -ss $start -to $end -y subtitles.trim.ass
ffmpeg -ss $start -to $end -i "source.mkv" -ss 0 -vf ass=subtitles.trim.ass -c:v libx264 -c:a copy -y final.mkv
