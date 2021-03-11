for image in *.jpg; do convert $image -background white -gravity north -extent 981x1506 $image; done  
