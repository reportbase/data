#full000.sh
rm -f 003* 004* 008* 012* 024*
#gif.sh
#div000.sh
for image in 009*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
for image in 018*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done

