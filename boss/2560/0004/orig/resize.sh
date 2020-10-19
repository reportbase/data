for image in *.jpg; do convert $image -resize x1440 -quality 80 $image; done
#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB $image ; done



