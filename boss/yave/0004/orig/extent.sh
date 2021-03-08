for image in *.jpg; do convert $image -background white -gravity north -extent 1100x1500 $image; done  
