for image in *.jpg; do convert $image -background white -gravity north -extent 950x1300 $image; done  
