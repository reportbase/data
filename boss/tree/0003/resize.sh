convert 002.014.jpg -sampling-factor 4:2:0 -strip -quality 90 -interlace JPEG -colorspace RGB 002.014.jpg
#for image in *.jpg; do convert $image -sampling-factor 4:2:0 -strip -quality 80 -resize x2400 -interlace JPEG -colorspace RGB $image ; done
#for image in *.jpg 5*; do convert $image -resize 900x1080! -quality 80 $image; done


