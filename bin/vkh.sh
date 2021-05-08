NAME=${PWD##*/}
mkdir -p tmp
cp orig/*.jpg tmp
for image in tmp/*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
COUNT=$(ls orig/*.jpg | wc -l)
TILE="-tile "$COUNT"x1"
montage tmp/*.jpg $TILE -mode Concatenate home.jpg 2> /dev/null
rm -r tmp
