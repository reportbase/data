for image in *.jpg; do convert $image -background white -gravity north -extent 1160x1620 $image; done  
