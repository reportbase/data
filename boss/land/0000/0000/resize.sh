for image in 003.002.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize x540 -interlace JPEG -colorspace RGB thumb.jpg ; done
#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


