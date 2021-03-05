for image in 0032.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize x1266 -interlace JPEG -colorspace RGB $image ; done


