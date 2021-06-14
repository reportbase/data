if [ ! -f "splash.jpg" ]; then
    if [ ! -f "orig/0000.jpg" ]; then
    fi
fi

if [ ! -f "home.jpg" ]; then
    convert -size 1x1 canvas:white home.jpg
fi

if [ ! -f "describe.txt" ]; then
    touch "describe.txt"
fi

if [ ! -f "meta.ini" ]; then
    touch "meta.ini"
fi

rm -r -f *.out error TMP
cp meta.ini .meta.ini


