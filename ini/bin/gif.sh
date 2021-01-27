mkdir -p tmp
cd tmp

cp ../orig/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 420x240+0+0 $image; done
convert -delay 100 -loop 0 {0000..0023}.jpg ../420.240.gif

cp ../orig/*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 240x240+0+0 $image; done
convert -delay 100 -loop 0 {0000..0023}.jpg ../240.240.gif

cd ..
rm -r tmp
