for image in *.jpg; do convert $image -gravity center -crop 1920x1200+0+0 $image; done
