LINE1=$(cat ../title)
LINE2=$(cat ../$1/title)

cd ../$1/orig
#../../bin/./full.sh
../../bin/./thumb.sh $LINE1 $LINE2
