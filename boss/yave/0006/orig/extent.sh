for image in *.jpg; do convert $image -background white -gravity north -extent 900x1400 $image; done  
