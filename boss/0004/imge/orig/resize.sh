for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 85 -resize x540 -interlace JPEG -colorspace RGB $image ; done



