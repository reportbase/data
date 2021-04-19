rm -r -f *.out error TMP
NAME=${PWD##*/}

#$PROJECTNAME 2> /dev/null
#../html/./home.sh 
#../html/./gif.sh $1 2> /dev/null

#thumb.sh x240
#cp orig/0000.jpg ../html/splash/$NAME.jpg 2>/dev/null
#cp thumb.jpg ../html/splash/$NAME.jpg 2>/dev/null

sed -i '/hitrows_8/Id' meta.ini
sed -i '/draw_8/Id' meta.ini

printf 'hitrows_8=1\n' >> meta.ini
