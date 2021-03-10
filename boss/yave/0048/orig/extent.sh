for image in *.jpg; do convert $image -background white -gravity north -extent 2560x1520 $image; done  
