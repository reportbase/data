for image in *.jpg; do convert $image -background white -gravity north -extent 1280x2010 $image; done  
