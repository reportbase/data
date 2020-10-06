for image in *.jpg; do convert $image -gravity center -crop 774x1080+0+0 $image; done


