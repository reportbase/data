rm sized/*.jpg
for image in untouched/*.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -interlace JPEG -colorspace RGB -resize x1080 sized/$(basename -- "$image") ; done
for image in sized/*.jpg; do convert $image -gravity center -crop 1536x1080+0+0 $image; done
chmod g+w sized/*.jpg    
