rm 4* 5*.jpg
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x180 -colorspace RGB $image ; done
for image in *.jpg; do convert $image -gravity center -crop 720x+0+0 $image; done

montage {0001..0054}.jpg -tile 54x1 -mode Concatenate 5000.jpg 2> error
cp 5000.jpg ../..
