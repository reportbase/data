for image in *.jpg; do convert $image -background white -gravity north -extent  1200x1800 $image; done  
