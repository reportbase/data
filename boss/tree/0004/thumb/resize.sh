for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x320 -quality 75 -interlace JPEG -colorspace RGB $image ; done


