for image in *.jpg; do convert $image -gravity center -crop 928x1444+0+0 $image; done


