NAME=${PWD##*/}
mkdir -p tmp
cp orig/*.jpg tmp
for image in orig/*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
montage orig/*.jpg -tile 72x1 -mode Concatenate home.jpg 2> /dev/null
rm -r tmp
