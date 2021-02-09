#full000.sh
rm -f 008* 
full002.sh
#gif.sh
#div000.sh
#for image in 006*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done
for image in 009*.jpg; do convert $image -sampling-factor 4:2:0 -strip -resize x720 -quality 75 -interlace JPEG -colorspace RGB $image ; done

