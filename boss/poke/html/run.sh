#../html/./gif.sh $1 2> /dev/null

sed '/a=/d' meta.ini 
printf 'a=1\n' >> meta.ini

rm -f *.out error
