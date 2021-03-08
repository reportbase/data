for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize x1080 -interlace JPEG -colorspace RGB $image ; done


