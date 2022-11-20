#!/bin/sh

start=21:33.626
end=21:55.356
ffmpeg -i subtitles.ass -ss $start -to $end -y subtitles.trim.ass
ffmpeg -ss $start -to $end -i "source.mkv" -ss 0 -vf ass=subtitles.trim.ass -c:v libx264 -c:a copy -y final.mkv
