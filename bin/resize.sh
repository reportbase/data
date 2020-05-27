for image in 4*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 65 -interlace JPEG -colorspace RGB $image ; done



