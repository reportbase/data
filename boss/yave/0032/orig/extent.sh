for image in *.jpg; do convert $image -background white -gravity north -extent 1920x2951 $image; done  
