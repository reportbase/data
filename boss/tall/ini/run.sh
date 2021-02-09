#full000.sh
rm -f 018* 009* 
#gif.sh
#div000.sh
for image in 012*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done

