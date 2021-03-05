for image in *.jpg; do convert $image -background white -gravity north -extent  1130x1590 $image; done  
