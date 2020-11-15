for image in untouched/*.jpg; do convert $image -gravity center -crop 2200x2600-500-200 sized/$(basename -- "$image") ; done
for image in sized/*.jpg; do convert $image -quality 80 -resize x1080 sized/$(basename -- "$image") ; done
