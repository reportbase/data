for image in *.jpg; do convert $image -gravity center -crop 936x1440+0+0 $image; done


