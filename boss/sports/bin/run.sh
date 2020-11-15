cd ../$1/orig
LINE1=$(cat ../../title)
LINE2=$(cat ../title)

../../bin/./full.sh
../../bin/./thumb.sh LINE1 LINE2 
