convert 002.005.jpg -sampling-factor 4:2:0 -strip -quality 80 -resize x2400 -interlace JPEG -colorspace RGB 002.005.jpg
convert 002.007.jpg -sampling-factor 4:2:0 -strip -quality 80 -resize x2400 -interlace JPEG -colorspace RGB 002.007.jpg
#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


