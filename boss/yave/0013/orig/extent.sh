for image in *.jpg; do convert $image -background white -gravity north -extent  820x1080  $image; done  
