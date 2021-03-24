
for image in *.jpg; do convert $image -resize 794x1800 -background white -compose Copy -gravity center -extent  794x1800 -quality 90 $image; done
