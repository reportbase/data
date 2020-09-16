for image in 36*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize 7740x -colorspace RGB $image ; done



