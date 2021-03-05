for image in *.jpg; do convert $image -background white -gravity north -extent 1100x1470 $image; done  
