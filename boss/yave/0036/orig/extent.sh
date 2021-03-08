for image in *.jpg; do convert $image -background white -gravity north -extent 1240x1620 $image; done  
