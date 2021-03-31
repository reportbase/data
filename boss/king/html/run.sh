NAME=${PWD##*/}
cp splash.jpg ../splash/$NAME.jpg

$PROJECTNAME 2> /dev/null
#../html/./home.sh 
#../html/./gif.sh $1 2> /dev/null

sed -i '/count=/d' meta.ini 
sed -i '/a=/d' meta.ini 
printf 'a=1\n' >> meta.ini

rm -f *.out error
