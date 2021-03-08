for image in *.jpg; do convert $image -background white -gravity north -extent  1172x1476 $image; done  
