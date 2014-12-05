TEMPDIR=~/Downloads/screencaps_temp

ffmpeg -start_number 1 -r 30 -i $TEMPDIR/%05d.jpg -vcodec libx264 -vb 20M ~/Downloads/screencaps.mp4
