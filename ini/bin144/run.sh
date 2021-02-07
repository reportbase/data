#../bin/./gif.sh
#../bin/./full.sh
#../bin/./join.sh
div000.sh
for image in 018*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
