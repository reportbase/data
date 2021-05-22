if [ ! -f "home.jpg" ]; then
    convert -size 1x1 canvas:white home.jpg
fi

if [ ! -f "describe.txt" ]; then
    touch "describe.txt"
fi

rm -r -f *.out error TMP
cp meta.ini .meta.ini


