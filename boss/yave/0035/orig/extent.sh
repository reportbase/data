for image in *.jpg; do convert $image -background white -gravity north -extent 1220x1620 $image; done  
