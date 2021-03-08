for image in *.jpg; do convert $image -background white -gravity north -extent 1150x1600 $image; done  
