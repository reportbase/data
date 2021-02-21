sed -i '/url=/d' meta.ini
sed -i '/name=/d' meta.ini
rm -f *.out error
../html/./gif.sh $1
