for image in *.jpg; do convert $image -background white -gravity north -extent 1080x1650 $image; done  
