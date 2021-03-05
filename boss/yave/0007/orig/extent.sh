for image in *.jpg; do convert $image -background white -gravity north -extent x1550 $image; done  
