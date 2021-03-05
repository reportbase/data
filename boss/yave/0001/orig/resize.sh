for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize 1440x2195 -interlace JPEG -colorspace RGB $image ; done


