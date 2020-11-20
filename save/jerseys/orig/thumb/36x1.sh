rm 5*.jpg
cp ../*.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x180 -colorspace RGB $image ; done

montage {0000..0035}.jpg -tile 36x1 -mode Concatenate 5000.jpg 2> error
cp 5*.jpg ../..
