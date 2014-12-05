CAPDIR=~/Downloads/screencaps
TEMPDIR=~/Downloads/screencaps_temp

mkdir $TEMPDIR
x=1; for i in $CAPDIR/*jpg; do counter=$(printf %05d $x); ln "$i" "$TEMPDIR/$counter.jpg"; x=$(($x+1)); done
