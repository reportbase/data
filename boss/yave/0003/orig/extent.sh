for image in *.jpg; do convert $image -background white -gravity north -extent 1000x1400 $image; done  
