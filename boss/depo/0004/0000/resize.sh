convert 012.000.jpg -sampling-factor 4:2:0 -strip -resize x360 -interlace JPEG -colorspace RGB 009.000.webp
#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


