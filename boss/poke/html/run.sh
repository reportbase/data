NAME=${PWD##*/}
#cp orig/0000.jpg ../splash/$NAME.jpg
#cp splash.jpg ../splash/$NAME.jpg

$PROJECTNAME 2> /dev/null
#../html/./home.sh 
#../html/./gif.sh $1 2> /dev/null

sed -r -i 's/\s+//g' meta.ini  #clear whitespace
#sed -i '/a=/d' meta.ini 
#printf 'a=1\n' >> meta.ini

rm -f *.out error
