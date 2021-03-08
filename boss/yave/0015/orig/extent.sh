for image in *.jpg; do convert $image -background white -gravity north -extent 1450x2140 $image; done  
