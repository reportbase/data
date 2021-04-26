rm -r -f *.out error TMP
cp meta.ini .meta.ini

#$PROJECTNAME 2> /dev/null
#../html/./home.sh x240
#../html/./gif.sh $1 2> /dev/null

#thumb.sh x240
FOLDER=${PWD##*/}
cp orig/0000.jpg ../html/splash/$FOLDER.jpg 2>/dev/null
cp thumb.jpg ../html/splash/$FOLDER.jpg 2>/dev/null

#RNAME=$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 4 | head -n 1)
#RNAME=${RNAME^^}
#vkr.sh name $RNAME

