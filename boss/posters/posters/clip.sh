for image in *.jpg; do convert $image -gravity center -crop 640x1080+0+0 $image; done


