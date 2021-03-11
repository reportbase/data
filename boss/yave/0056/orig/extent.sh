for image in *.jpg; do convert $image -background white -gravity north -extent 920x1350 $image; done  
