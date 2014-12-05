mkdir ~/Downloads/screencaps_temp/
x=1; for i in ~/Downloads/screencaps/*jpg; do counter=$(printf %05d $x); ln "$i" ~/Downloads/screencaps_temp/"$counter".jpg; x=$(($x+1)); done
