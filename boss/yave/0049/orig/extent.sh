for image in *.jpg; do convert $image -background white -gravity north -extent 1024x1575 $image; done  
