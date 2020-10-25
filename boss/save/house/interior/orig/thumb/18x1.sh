rm 4* 5*.jpg
cp ../{0001..0018}.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x360 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 280x360+0+0 $image; done

montage {0001..0018}.jpg -tile 18x1 -mode Concatenate 5000.jpg 2> error
mv 5*.jpg ../..
rm *.jpg

