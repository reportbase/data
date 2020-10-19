rm 5*.jpg
cp ../*.jpg .
#33120x280
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 920x280+0+0 $image; done
montage {0000..0035}.jpg -tile 36x1 -mode Concatenate 5000.jpg 2> error
mv 5000.jpg ../../5000.webp

#12960x240
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 360x240+0+0 $image; done
montage {0000..0035}.jpg -tile 36x1 -mode Concatenate 5000.jpg 2> error

mv 5000.jpg ../..
rm *.jpg
