for image in *.webp; do convert $image -sampling-factor 4:2:0 -strip -resize x160 -interlace JPEG -colorspace RGB $image ; done


