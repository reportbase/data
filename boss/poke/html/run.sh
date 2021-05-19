if [ ! -f "home.jpg" ]; then
    convert -size 1x1 canvas:white home.jpg
fi

if [ ! -f "describe.txt" ]; then
    touch "describe.txt"
fi

rm -r -f *.out error TMP
cp meta.ini .meta.ini
vkt.sh
vkr.sh momentumlow_4 40 
vkr.sh momentumhigh_4 40 


