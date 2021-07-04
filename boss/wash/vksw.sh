#vksw.sh width height
cd html/splash
RESIZE=$(printf "x%s" $2)
for image in *.webp; do convert $image -gravity center -crop $RESIZE+0+0 $image; done
CLIP=$(printf "%sx%s" $1 $2)
for image in *.webp; do convert $image -gravity center -crop $CLIP+0+0 $image; done
for image in *.webp; do convert $image -resize $CLIP -background white -compose Copy -gravity center -extent $CLIP -quality 90 $image; done
convert *.webp +append ../splash.jpg
cd ../..
