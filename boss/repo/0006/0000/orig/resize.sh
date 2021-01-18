for image in *.webp; do convert $image -sampling-factor 4:2:0 -strip -resize x280 -quality 75 -interlace JPEG -colorspace RGB $image ; done


