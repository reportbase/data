for image in *.jpg; do convert $image -gravity center -crop 944x1444+0+0 $image; done


