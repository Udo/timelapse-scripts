timelapse-scripts
=================

Bash scripts for making screen shot time lapse movies on OS X.

# Screen Capture

The script `capture-screens.sh` grabs the actual screen content. Open it in a text editor to change its settings. By default, it takes a JPG screenshot off the main screen every second and puts it into the folder Downloads/screencaps/.

You can stop the capture process any time by hitting CTRL-c, and resume by just starting the script again. The naming convention of the capture files contain the timestamp at the moment of start, so at the end the movie frames will be in order. Because of this, you can also combine captured frames from different computers for example if you alternated between your laptop and your desktop.

# Preparing for Movie Generation

After recording the time-lapse, it's time to generate a movie out of it. For this, you'll need the `ffmpeg` command-line tool. Most Macs should already have it, but if you don't you can just download it with Homebrew.

The movie generation has two steps: first sorting through all the captured frames, and finally encoding the movie. Start the sorting operation by launching the script `capture-preparemovie.sh`.

This will put a symbolic link to every frame into the folder ~/Downloads/screencaps_temp/.

# Make the Movie

To launch the encode, start the script `capture-makemovie.sh`. You'll see some updates on screen as the movie is being made. If you see any error messages, it's likely you have captured images with different sizes (for example, if they come from different computers) - in that case, put the differing frames away and encode them later into a second movie.

At the end, a new movie file called ~/Downloads/screencaps.mp4 should appear. After a quick check that it came out OK you can delete the source folders `~/Downloads/screencaps/` and `~/Downloads/screencaps_temp/`.

