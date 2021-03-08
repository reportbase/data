for image in *.jpg; do convert $image -background white -gravity north -extent 1042x1550 $image; done  
