for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 75 -resize x1800 -interlace JPEG -colorspace RGB $image ; done


