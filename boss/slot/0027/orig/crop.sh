
for image in *.jpg; do convert $image -gravity center -crop 879x1080+0+0 $(basename -- "$image") ; done

