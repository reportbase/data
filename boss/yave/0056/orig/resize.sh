for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 75 -resize 920x -interlace JPEG -colorspace RGB $image ; done


