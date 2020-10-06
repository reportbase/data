rm 5*.jpg
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x480 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 480x480+0+0 $image; done

montage {0000..0071}.jpg -tile 72x1 -mode Concatenate 5000.jpg 2> error
mv 5*.jpg ../..
rm *.jpg
