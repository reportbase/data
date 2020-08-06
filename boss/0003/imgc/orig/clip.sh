for image in *.jpg; do convert $image -gravity center -crop 1920x2914+0+0 $image; done


