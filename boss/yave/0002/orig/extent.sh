for image in *.jpg; do convert $image -background white -gravity north -extent 1100x1584 $image; done  
