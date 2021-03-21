for image in *.jpg; do convert $image -background white -gravity north -extent 1280x1900 $image; done  
