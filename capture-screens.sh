#!/bin/bash 

mkdir ~/Downloads/screencaps/
cd ~/Downloads/screencaps/

DATE=`date +%Y%m%d-%H%M%S`
COUNTER=1000000000

while true; do
    let COUNTER=COUNTER+1 
    screencapture -Cm -t jpg -x "$DATE-$COUNTER.jpg"
    echo "saving screenshot to ~/Downloads/screencaps/$DATE-$COUNTER.jpg"
    sleep 1
done
