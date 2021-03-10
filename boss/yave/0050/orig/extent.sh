for image in *.jpg; do convert $image -background white -gravity north -extent 980x1510 $image; done  
