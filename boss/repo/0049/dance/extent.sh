for image in *.jpg; do convert $image -resize $1 -background white -compose Copy -gravity center -extent $1 -quality 90 $image; done
