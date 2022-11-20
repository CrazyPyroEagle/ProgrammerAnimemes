# Fixing the CI

Source: URAHARA第４話 (Snow-Raws)

To build, copy or symlink the source as `source.mkv` into this directory and then, with ffmpeg installed, run the `build.sh` script.
This will produce a `final.mkv` file.

This meme also has an mpv EDL version and Matroska ordered chapters, because I was experimenting with alternative ways of applying the edits, but could not find anything suitable.
To use the EDL version, with mpv installed, run `mpv --sid=1 chapters.edl`.
To use the Matroska ordered chapters, with MkvToolNix installed, run `mkvmerge -o output.mkv --no-chapters --chapters chapters.xml source.mkv subtitles.ass`; the file can then be played back with mpv or any other video player that supports ordered chapters.
The ordered chapters version is not suitable for sharing as it contains the rest of the source video.

