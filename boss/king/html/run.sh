NAME=${PWD##*/}
#cp splash.jpg ../splash/$NAME.jpg

$PROJECTNAME 2> /dev/null
#../html/./home.sh 

rm 009*
rm 018*
rm *.gif
../html/./gif.sh $1 2> /dev/null

#sed -i '/a=/d' meta.ini 
#printf 'a=1\n' >> meta.ini

rm -f *.out error
