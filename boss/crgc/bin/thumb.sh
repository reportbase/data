cd thumbsrc
cp ../tuned/*.jpg .
convert -resize x480 -delay 100 -loop 0 {0000..0019}.jpg ../../0480.gif
convert -resize x360 -delay 100 -loop 0 {0000..0019}.jpg ../../0360.gif
convert -resize x240 -delay 100 -loop 0 {0000..0019}.jpg ../../0240.gif

./all.sh

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x300 -colorspace RGB $image ; done
montage {0000..0017}.jpg -tile 18x1 -mode Concatenate ../../018.000.jpg 

rm *.jpg
 
