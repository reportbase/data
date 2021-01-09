 convert a.jpg -sampling-factor 4:2:0 -resize x720 -strip -quality 80 -interlace JPEG -colorspace RGB 006.000.webp

#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


