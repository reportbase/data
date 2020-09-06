#convert 0000.jpg -resize 1920x2951! 0000.jpg
#for image in *.jpg; do convert $image -resize x2951 $image; done
#for image in *.jpg; do convert $image -resize 1917x $image; done

for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 65 -interlace JPEG -resize x1440 -colorspace RGB $image ; done
