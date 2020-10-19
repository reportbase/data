rm 5*.jpg
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x280 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 320x280+0+0 $image; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate 5000.jpg 2> error
mv 5000.jpg ../../5000.webp

cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x240 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 180x240+0+0 $image; done
montage {0000..0071}.jpg -tile 72x1 -mode Concatenate 5000.jpg 2> error

mv 5000.jpg ../..
rm *.jpg
