#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB $image ; done
convert church.jpg -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB church.jpg



