rm 4* 5*.jpg
cp ../{0001..0018}.jpg .
for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -resize x180 -colorspace RGB $image ; done

montage {0001..0018}.jpg -tile 18x1 -mode Concatenate 5000.jpg 2> error
convert +append 5000.jpg 5000.jpg ../../5000.jpg
